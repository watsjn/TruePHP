<?php
declare(strict_types=1);

namespace App\Container\Model\User\Service;

class ResetTokenizerFactory
{
    public function create(string $interval): ResetTokenizer
    {
        return new ResetTokenizer(new \DateInterval($interval));
    }
}