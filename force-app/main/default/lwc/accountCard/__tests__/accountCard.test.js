import { createElement } from 'lwc';
import AccountCard from 'c/accountCard';

describe('c-account-card', () => {
    afterEach(() => {
        while (document.body.firstChild) {
            document.body.removeChild(document.body.firstChild);
        }
    });

    it('renders with default account name', () => {
        const element = createElement('c-account-card', { is: AccountCard });
        document.body.appendChild(element);

        const nameEl = element.shadowRoot.querySelector('.account-name');
        expect(nameEl.textContent).toBe('Name: Default Account');
    });

    it('renders with custom account name', () => {
        const element = createElement('c-account-card', { is: AccountCard });
        element.accountName = 'Acme Corp';
        document.body.appendChild(element);

        const nameEl = element.shadowRoot.querySelector('.account-name');
        expect(nameEl.textContent).toBe('Name: Acme Corp');
    });

    it('renders with custom industry', () => {
        const element = createElement('c-account-card', { is: AccountCard });
        element.industry = 'Finance';
        document.body.appendChild(element);

        const industryEl = element.shadowRoot.querySelector('.account-industry');
        expect(industryEl.textContent).toBe('Industry: Finance');
    });
});
