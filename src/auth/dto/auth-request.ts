import { User } from 'src/shared/prismagraphql/user';

export class AuthRequest extends Request {
  user: User;
}
