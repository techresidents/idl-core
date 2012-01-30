namespace java com.techresidents.services.idlcore.thrift.gen
namespace py idlcore

struct RequestContext {
    1: i32 userId,
    2: i32 impersonatingUserId,
    3: string sessionId,
    4: string context
}

exception ServiceException {
    1: string fault
}
