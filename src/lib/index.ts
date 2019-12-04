import {Option} from "ts-option";

export const getLanguages = (siteOpt: Option<string>) => {
    return siteOpt.toArray;
};
