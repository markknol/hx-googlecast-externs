package googlecast.games;
import haxe.extern.EitherType;

/**
 * @author Mark Knol
 */
typedef GameManagerEvent = EitherType<GameManagerGameMessageReceivedEvent, GameManagerStateChangedEvent>;