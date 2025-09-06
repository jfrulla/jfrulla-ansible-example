export UV_INSTALL_DIR := /opt/uv/bin
export VENV_BIN := .venv/bin/

UV := $(UV_INSTALL_DIR)/uv
ANSIBLE := $(VENV_BIN)/ansible

.PHONY: install
install: $(ANSIBLE)
	$(UV) sync
	$(ANSIBLE)-galaxy install -r requirements.yml

$(ANSIBLE): $(UV)

$(UV):
	curl -LsSf https://astral.sh/uv/install.sh | sh
