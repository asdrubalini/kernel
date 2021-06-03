#!/bin/bash

cd linux/ \
    && make -j17 \
    && make modules \
    && sudo make modules_install \
    && sudo cp arch/x86_64/boot/bzImage /boot/vmlinuz-linux \
    && sudo mkinitcpio -P linux \
    && paru -S nvidia-beta-dkms \
    && paru -S virtualbox-host-dkms \
    && sudo grub-mkconfig -o /boot/grub/grub.cfg
