class Project < ApplicationRecord

    enum status: %i[propuesta en_progreso terminado]

end
