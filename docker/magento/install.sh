#!/usr/bin/env sh

MAGE_ROOT=/app/
MAGE_BIN=${MAGE_ROOT}/bin/magento
MAGE_ADMIN_EMAIL="chillgood.support@tfidm.com"
MAGE_ADMIN_FIRSTNAME=Chill
MAGE_ADMIN_LASTNAME=Good
MAGE_ADMIN_USER=chillgood
MAGE_ADMIN_PASS=goodchill2020

# cd ${MAGE_ROOT} && \
    # bin/magento setup:install \
    
# cd magento2-2.4.0 &&
bin/magento setup:install \
    --base-url="http://docker-chillgood.tfiproject.com" \
    --backend-frontname=admin \
    --language=en_US \
    --currency=HKD \
    --timezone="Asia/Hong_Kong" \
    --use-rewrites=1 \
    --admin-firstname=${MAGE_ADMIN_FIRSTNAME} \
    --admin-lastname=${MAGE_ADMIN_LASTNAME} \
    --admin-email=${MAGE_ADMIN_EMAIL} \
    --admin-user=${MAGE_ADMIN_USER} \
    --admin-password=${MAGE_ADMIN_PASS} \
    --db-host=db \
    --db-name=magento \
    --db-user=chillgood \
    --db-password=goodchill2020 \
    --elasticsearch-host=elasticsearch \
    --elasticsearch-port=9200 \
    --elasticsearch-enable-auth=0 \
    --amqp-host=rabbitmq \
    --amqp-port=5672 \
    --amqp-user=guest \
    --amqp-password=guest
    # --elasticsearch-username=magento \
    # --elasticsearch-password=<password> \
    # --cache-backend=redis \
    # --cache-backend-redis-server=localhost \
    # --cache-backend-redis-db=0 \
    # --session-save=redis \
    # --session-save-redis-host=localhost \
    # --session-save-redis-db=1 \
    # --page-cache=redis \
    # --page-cache-redis-server=localhost \
    # --page-cache-redis-db=2 \
    # --allow-parallel-generation \

