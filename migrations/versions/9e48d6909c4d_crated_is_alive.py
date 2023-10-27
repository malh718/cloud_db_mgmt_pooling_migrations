"""crated is alive

Revision ID: 9e48d6909c4d
Revises: 99ba7412313e
Create Date: 2023-10-27 21:51:56.946182

"""
from typing import Sequence, Union

from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision: str = '9e48d6909c4d'
down_revision: Union[str, None] = '99ba7412313e'
branch_labels: Union[str, Sequence[str], None] = None
depends_on: Union[str, Sequence[str], None] = None


def upgrade() -> None:
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('patients', sa.Column('is_alive', sa.String(length=50), nullable=False))
    # ### end Alembic commands ###


def downgrade() -> None:
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_column('patients', 'is_alive')
    # ### end Alembic commands ###
