.class public final enum Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Model/CBError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CBImpressionError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/chartboost/sdk/Model/CBError$CBImpressionError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACTIVITY_MISSING_IN_MANIFEST:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum ASSETS_DOWNLOAD_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum ASSET_MISSING:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum ASSET_PREFETCH_IN_PROGRESS:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum EMPTY_LOCAL_VIDEO_LIST:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum ERROR_CREATING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum ERROR_DISPLAYING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum ERROR_LOADING_WEB_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum ERROR_PLAYING_VIDEO:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum FIRST_SESSION_INTERSTITIALS_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum HARDWARE_ACCELERATION_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum INCOMPATIBLE_API_VERSION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum INTERNET_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum INTERNET_UNAVAILABLE_AT_SHOW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum INVALID_RESPONSE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum NETWORK_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum PENDING_IMPRESSION_ERROR:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum SESSION_NOT_STARTED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum TOO_MANY_CONNECTIONS:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum USER_CANCELLATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum VIDEO_ID_MISSING:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum VIDEO_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum VIDEO_UNAVAILABLE_FOR_CURRENT_ORIENTATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum WEB_VIEW_CLIENT_RECEIVED_ERROR:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum WEB_VIEW_PAGE_LOAD_TIMEOUT:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum WRONG_ORIENTATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field private static final synthetic a:[Lcom/chartboost/sdk/Model/CBError$CBImpressionError;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 1
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/4 v1, 0x0

    const-string v2, "INTERNAL"

    invoke-direct {v0, v2, v1}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 3
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/4 v2, 0x1

    const-string v3, "INTERNET_UNAVAILABLE"

    invoke-direct {v0, v3, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNET_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 5
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/4 v3, 0x2

    const-string v4, "TOO_MANY_CONNECTIONS"

    invoke-direct {v0, v4, v3}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->TOO_MANY_CONNECTIONS:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 7
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/4 v4, 0x3

    const-string v5, "WRONG_ORIENTATION"

    invoke-direct {v0, v5, v4}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->WRONG_ORIENTATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 9
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/4 v5, 0x4

    const-string v6, "FIRST_SESSION_INTERSTITIALS_DISABLED"

    invoke-direct {v0, v6, v5}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->FIRST_SESSION_INTERSTITIALS_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 11
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/4 v6, 0x5

    const-string v7, "NETWORK_FAILURE"

    invoke-direct {v0, v7, v6}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NETWORK_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 13
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/4 v7, 0x6

    const-string v8, "NO_AD_FOUND"

    invoke-direct {v0, v8, v7}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 15
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/4 v8, 0x7

    const-string v9, "SESSION_NOT_STARTED"

    invoke-direct {v0, v9, v8}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->SESSION_NOT_STARTED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 17
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/16 v9, 0x8

    const-string v10, "IMPRESSION_ALREADY_VISIBLE"

    invoke-direct {v0, v10, v9}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 19
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/16 v10, 0x9

    const-string v11, "NO_HOST_ACTIVITY"

    invoke-direct {v0, v11, v10}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 21
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/16 v11, 0xa

    const-string v12, "USER_CANCELLATION"

    invoke-direct {v0, v12, v11}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->USER_CANCELLATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 23
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/16 v12, 0xb

    const-string v13, "INVALID_LOCATION"

    invoke-direct {v0, v13, v12}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 25
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/16 v13, 0xc

    const-string v14, "VIDEO_UNAVAILABLE"

    invoke-direct {v0, v14, v13}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 27
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/16 v14, 0xd

    const-string v15, "VIDEO_ID_MISSING"

    invoke-direct {v0, v15, v14}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_ID_MISSING:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 29
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/16 v15, 0xe

    const-string v14, "ERROR_PLAYING_VIDEO"

    invoke-direct {v0, v14, v15}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_PLAYING_VIDEO:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 31
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v14, "INVALID_RESPONSE"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_RESPONSE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 33
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v14, "ASSETS_DOWNLOAD_FAILURE"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSETS_DOWNLOAD_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 35
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v14, "ERROR_CREATING_VIEW"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_CREATING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 37
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v14, "ERROR_DISPLAYING_VIEW"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_DISPLAYING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 39
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v14, "INCOMPATIBLE_API_VERSION"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INCOMPATIBLE_API_VERSION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 41
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v14, "ERROR_LOADING_WEB_VIEW"

    const/16 v15, 0x14

    invoke-direct {v0, v14, v15}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_LOADING_WEB_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 43
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v14, "ASSET_PREFETCH_IN_PROGRESS"

    const/16 v15, 0x15

    invoke-direct {v0, v14, v15}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSET_PREFETCH_IN_PROGRESS:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 45
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v14, "ACTIVITY_MISSING_IN_MANIFEST"

    const/16 v15, 0x16

    invoke-direct {v0, v14, v15}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ACTIVITY_MISSING_IN_MANIFEST:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 47
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v14, "EMPTY_LOCAL_VIDEO_LIST"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->EMPTY_LOCAL_VIDEO_LIST:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 49
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v14, "END_POINT_DISABLED"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 51
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v14, "HARDWARE_ACCELERATION_DISABLED"

    const/16 v15, 0x19

    invoke-direct {v0, v14, v15}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->HARDWARE_ACCELERATION_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 53
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v14, "PENDING_IMPRESSION_ERROR"

    const/16 v15, 0x1a

    invoke-direct {v0, v14, v15}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->PENDING_IMPRESSION_ERROR:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 55
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v14, "VIDEO_UNAVAILABLE_FOR_CURRENT_ORIENTATION"

    const/16 v15, 0x1b

    invoke-direct {v0, v14, v15}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_UNAVAILABLE_FOR_CURRENT_ORIENTATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 57
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v14, "ASSET_MISSING"

    const/16 v15, 0x1c

    invoke-direct {v0, v14, v15}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSET_MISSING:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 59
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v14, "WEB_VIEW_PAGE_LOAD_TIMEOUT"

    const/16 v15, 0x1d

    invoke-direct {v0, v14, v15}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->WEB_VIEW_PAGE_LOAD_TIMEOUT:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 61
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v14, "WEB_VIEW_CLIENT_RECEIVED_ERROR"

    const/16 v15, 0x1e

    invoke-direct {v0, v14, v15}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->WEB_VIEW_CLIENT_RECEIVED_ERROR:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 63
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v14, "INTERNET_UNAVAILABLE_AT_SHOW"

    const/16 v15, 0x1f

    invoke-direct {v0, v14, v15}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNET_UNAVAILABLE_AT_SHOW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/16 v14, 0x20

    .line 64
    new-array v14, v14, [Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    sget-object v15, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v15, v14, v1

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNET_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v1, v14, v2

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->TOO_MANY_CONNECTIONS:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v1, v14, v3

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->WRONG_ORIENTATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v1, v14, v4

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->FIRST_SESSION_INTERSTITIALS_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v1, v14, v5

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NETWORK_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v1, v14, v6

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v1, v14, v7

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->SESSION_NOT_STARTED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v1, v14, v8

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v1, v14, v9

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v1, v14, v10

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->USER_CANCELLATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v1, v14, v11

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v1, v14, v12

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v1, v14, v13

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_ID_MISSING:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_PLAYING_VIDEO:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_RESPONSE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSETS_DOWNLOAD_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_CREATING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_DISPLAYING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/16 v2, 0x12

    aput-object v1, v14, v2

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INCOMPATIBLE_API_VERSION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/16 v2, 0x13

    aput-object v1, v14, v2

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_LOADING_WEB_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/16 v2, 0x14

    aput-object v1, v14, v2

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSET_PREFETCH_IN_PROGRESS:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/16 v2, 0x15

    aput-object v1, v14, v2

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ACTIVITY_MISSING_IN_MANIFEST:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/16 v2, 0x16

    aput-object v1, v14, v2

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->EMPTY_LOCAL_VIDEO_LIST:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/16 v2, 0x17

    aput-object v1, v14, v2

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/16 v2, 0x18

    aput-object v1, v14, v2

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->HARDWARE_ACCELERATION_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/16 v2, 0x19

    aput-object v1, v14, v2

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->PENDING_IMPRESSION_ERROR:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/16 v2, 0x1a

    aput-object v1, v14, v2

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_UNAVAILABLE_FOR_CURRENT_ORIENTATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/16 v2, 0x1b

    aput-object v1, v14, v2

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSET_MISSING:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/16 v2, 0x1c

    aput-object v1, v14, v2

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->WEB_VIEW_PAGE_LOAD_TIMEOUT:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/16 v2, 0x1d

    aput-object v1, v14, v2

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->WEB_VIEW_CLIENT_RECEIVED_ERROR:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/16 v2, 0x1e

    aput-object v1, v14, v2

    const/16 v1, 0x1f

    aput-object v0, v14, v1

    sput-object v14, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->a:[Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    .registers 2

    .line 1
    const-class v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    return-object p0
.end method

.method public static values()[Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    .registers 1

    .line 1
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->a:[Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    return-object v0
.end method
