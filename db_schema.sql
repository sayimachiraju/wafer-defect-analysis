CREATE TABLE IF NOT EXISTS point_defect_runs (
    id                  INTEGER PRIMARY KEY AUTOINCREMENT,
    run_timestamp       TEXT NOT NULL,
    supercell_size      INTEGER NOT NULL,
    vacancy_fraction    REAL NOT NULL,
    dose_per_cm2        REAL NOT NULL,
    anneal_temp_c       REAL,
    vacancy_count       INTEGER NOT NULL,
    interstitial_count  INTEGER NOT NULL,
    defect_density_cm2  REAL NOT NULL,
    structure_file      TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS grain_boundary_runs (
    id                      INTEGER PRIMARY KEY AUTOINCREMENT,
    run_timestamp           TEXT NOT NULL,
    supercell_size          INTEGER NOT NULL,
    misorientation_angle    REAL NOT NULL,
    boundary_width_angstrom REAL,
    fcc_fraction            REAL,
    hcp_fraction            REAL,
    disordered_fraction     REAL NOT NULL,
    structure_file          TEXT NOT NULL
);
