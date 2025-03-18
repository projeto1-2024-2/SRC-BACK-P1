import { establishment } from 'src/shared/prismagraphql/establishment';
import { user } from 'src/shared/prismagraphql/user';

export class AuthRequest extends Request {
  user: user | establishment;
}
