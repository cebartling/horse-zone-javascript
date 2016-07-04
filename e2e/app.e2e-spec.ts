import { HorseZoneJavascriptPage } from './app.po';

describe('horse-zone-javascript App', function() {
  let page: HorseZoneJavascriptPage;

  beforeEach(() => {
    page = new HorseZoneJavascriptPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
