import yaml

import functools
print = functools.partial(print, flush=True)

def load_cfg():
    global cfg
    with open("config.yml","r") as ymlfile:
        cfg_l = yaml.load(ymlfile, Loader=yaml.FullLoader)

        if cfg_l["config"]["location"] == "self":
            cfg = cfg_l.copy()
        else:
            with open(cfg_l["config"]["location"] + "config.yml","r") as yamlfile2:
                cfg = yaml.load(ymlfile, Loader=yaml.FullLoader)

    return