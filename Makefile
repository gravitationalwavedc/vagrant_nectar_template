.PHONY: up down clean status login

_VM=vagrant

up:
	$(_VM) up

down:
	$(_VM) suspend

clean:
	$(_VM) destroy

status:
	$(_VM) status

login:
	$(_VM) ssh