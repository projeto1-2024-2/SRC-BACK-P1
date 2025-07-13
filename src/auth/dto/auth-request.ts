import { establishment } from '../../shared/prismagraphql/establishment';
import { user } from '../../shared/prismagraphql/user';

export class AuthRequest extends Request {
  user: user | establishment;
}
