.class public final enum Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Events/ChartboostCacheError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

.field public static final enum ASSET_DOWNLOAD_FAILURE:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

.field public static final enum BANNER_DISABLED:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

.field public static final enum BANNER_VIEW_IS_DETACHED:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

.field public static final enum INTERNAL:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

.field public static final enum INTERNET_UNAVAILABLE:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

.field public static final enum NETWORK_FAILURE:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

.field public static final enum NO_AD_FOUND:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

.field public static final enum SESSION_NOT_STARTED:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;


# instance fields
.field private final errorCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 1
    new-instance v0, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    const/4 v1, 0x0

    const-string v2, "INTERNAL"

    invoke-direct {v0, v2, v1, v1}, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->INTERNAL:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    .line 2
    new-instance v0, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    const/4 v2, 0x1

    const-string v3, "INTERNET_UNAVAILABLE"

    invoke-direct {v0, v3, v2, v2}, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->INTERNET_UNAVAILABLE:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    .line 3
    new-instance v0, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    const/4 v3, 0x2

    const/4 v4, 0x5

    const-string v5, "NETWORK_FAILURE"

    invoke-direct {v0, v5, v3, v4}, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->NETWORK_FAILURE:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    .line 4
    new-instance v0, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    const/4 v5, 0x3

    const/4 v6, 0x6

    const-string v7, "NO_AD_FOUND"

    invoke-direct {v0, v7, v5, v6}, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->NO_AD_FOUND:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    .line 5
    new-instance v0, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    const/4 v7, 0x4

    const/4 v8, 0x7

    const-string v9, "SESSION_NOT_STARTED"

    invoke-direct {v0, v9, v7, v8}, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->SESSION_NOT_STARTED:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    .line 6
    new-instance v0, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    const-string v9, "ASSET_DOWNLOAD_FAILURE"

    const/16 v10, 0x10

    invoke-direct {v0, v9, v4, v10}, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->ASSET_DOWNLOAD_FAILURE:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    .line 7
    new-instance v0, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    const-string v9, "BANNER_DISABLED"

    const/16 v10, 0x24

    invoke-direct {v0, v9, v6, v10}, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->BANNER_DISABLED:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    .line 8
    new-instance v0, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    const-string v9, "BANNER_VIEW_IS_DETACHED"

    const/16 v10, 0x25

    invoke-direct {v0, v9, v8, v10}, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->BANNER_VIEW_IS_DETACHED:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    const/16 v9, 0x8

    .line 9
    new-array v9, v9, [Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    sget-object v10, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->INTERNAL:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    aput-object v10, v9, v1

    sget-object v1, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->INTERNET_UNAVAILABLE:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    aput-object v1, v9, v2

    sget-object v1, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->NETWORK_FAILURE:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    aput-object v1, v9, v3

    sget-object v1, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->NO_AD_FOUND:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    aput-object v1, v9, v5

    sget-object v1, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->SESSION_NOT_STARTED:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    aput-object v1, v9, v7

    sget-object v1, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->ASSET_DOWNLOAD_FAILURE:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    aput-object v1, v9, v4

    sget-object v1, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->BANNER_DISABLED:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    aput-object v1, v9, v6

    aput-object v0, v9, v8

    sput-object v9, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->$VALUES:[Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->errorCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;
    .registers 2

    .line 1
    const-class v0, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    return-object p0
.end method

.method public static values()[Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;
    .registers 1

    .line 1
    sget-object v0, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->$VALUES:[Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->errorCode:I

    return v0
.end method
