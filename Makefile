test:
	python3 -m nose $(NOSE_ARGS)

fix:
	autopep8 --in-place -r -a tda
	autopep8 --in-place -r -a tests
	autopep8 --in-place -r -a examples

coverage:
	python3 -m coverage run --source=tda -m nose
	python3 -m coverage html

clean:
	rm -rf build dist docs-build tda_api.egg-info __pycache__
