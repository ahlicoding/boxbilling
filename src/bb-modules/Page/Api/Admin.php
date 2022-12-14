<?php
/**
 * BoxBilling.
 *
 * @copyright BoxBilling, Inc (https://www.boxbilling.org)
 * @license   Apache-2.0
 *
 * Copyright BoxBilling, Inc
 * This source file is subject to the Apache-2.0 License that is bundled
 * with this source code in the file LICENSE
 */

/**
 * Static Pages management.
 */

namespace Box\Mod\Page\Api;

class Admin extends \Api_Abstract
{
    /**
     * Return page pairs. Includes module and currently selected client area
     * pages.
     *
     * @return array
     */
    public function get_pairs()
    {
        $service = $this->getService();

        return $service->getPairs();
    }
}
