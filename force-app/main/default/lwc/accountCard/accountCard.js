import { LightningElement, api } from 'lwc';

export default class AccountCard extends LightningElement {
    @api accountName = 'Default Account';
    @api industry = 'Technology';
}
