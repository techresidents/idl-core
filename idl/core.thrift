namespace java com.techresidents.services.core.idl.gen
namespace py techresidents.services.core.idl.gen

struct RequestContext {
    1: i32 userId,
    2: i32 impersonatingUserId,
    3: string sessionId,
    4: string context
}

exception ServiceException {
    1: string fault
}
