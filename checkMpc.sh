if mpc status | grep playing >/dev/null
then
    echo "mpc is playing"
else
    echo "mpc is not playing"
    mpc toggle
fi
