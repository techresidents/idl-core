namespace java com.techresidents.services.core.idl.gen
namespace py tridlcore.gen

/**
 * Common status reporting for all services
 */
enum ServiceStatus {
    ALIVE = 0,
    STARTING = 1,
    STOPPING = 2,
    STOPPED = 3,
    WARNING = 4,
    DEAD = 5,
}

/**
 * Service exception
 */
exception ServiceException {
    1: string fault
}

/**
 * Context for the service request.
 * This must be the first parameter to all service requests.
 */
struct RequestContext {
    1: i32 userId,
    2: i32 impersonatingUserId,
    3: string sessionId,
    4: string context,
}

/**
 * Tech Residents base service interface. 
 * All services must extend this interface.
 */
service TRService {

    /**
     * Returns service name
     */
    string getName(1: RequestContext request),

    /**
     * Get the version of the service
     */
    string getVersion(1: RequestContext requestContext),


    /**
     * Get build number of the service
     */
    string getBuildNumber(1: RequestContext requestContext),


    /**
     * Get the status of the service
     */
    ServiceStatus getStatus(1: RequestContext requestContext),

    /**
     * Get descriptive status message of the service
     */
    string getStatusDetails(1: RequestContext requestContext),


    /**
     * Get counters for this service
     */
    map<string, i64> getCounters(1: RequestContext requestContext),


    /**
     * Get the value for this service option
     */
    string getOption(1: RequestContext requestContext,
                     2: string key),


    /**
     * Get a map of all service options and values
     */
    map<string, string>  getOptions(1: RequestContext requestContext),


    /**
     * Set an option for the service
     */
    void setOption(1: RequestContext requestContext,
                   2: string key,
                   3: string value), 

    /**
     * Reninitialize the service
     */
    oneway void reinitialize(1: RequestContext requestContext),
    

    /**
     * Shutdown the service
     */
    oneway void shutdown(1: RequestContext requestContext),
}
