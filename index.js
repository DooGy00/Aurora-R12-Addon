const AlienFX = require("alienfx");

let dev = null;

module.exports = {
    async init(device) {
        dev = new AlienFX({
            vid: 0x187C,
            pid: 0x0550,
            api: 4
        });

        await dev.open();
        console.log("[R12-Addon] Dispositivo abierto.");
    },

    async render(frame) {
        if (!dev) return;

        frame.forEach((color, index) => {
            const r = color[0];
            const g = color[1];
            const b = color[2];

            dev.setColor(index, r, g, b);
        });

        await dev.update();
    },

    async shutdown() {
        if (dev) {
            await dev.close();
            console.log("[R12-Addon] Cerrado.");
        }
    }
};
