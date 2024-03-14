.class public final enum Lcom/chartboost/sdk/Events/ChartboostShowError$Code;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Events/ChartboostShowError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/chartboost/sdk/Events/ChartboostShowError$Code;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

.field public static final enum AD_ALREADY_VISIBLE:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

.field public static final enum BANNER_DISABLED:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

.field public static final enum BANNER_VIEW_IS_DETACHED:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

.field public static final enum INTERNAL:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

.field public static final enum INTERNET_UNAVAILABLE:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

.field public static final enum NO_CACHED_AD:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

.field public static final enum PRESENTATION_FAILURE:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

.field public static final enum SESSION_NOT_STARTED:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;


# instance fields
.field private final errorCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 1
    new-instance v0, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    const/4 v1, 0x0

    const-string v2, "INTERNAL"

    invoke-direct {v0, v2, v1, v1}, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;->INTERNAL:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    .line 2
    new-instance v0, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    const/4 v2, 0x1

    const/4 v3, 0x7

    const-string v4, "SESSION_NOT_STARTED"

    invoke-direct {v0, v4, v2, v3}, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;->SESSION_NOT_STARTED:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    .line 3
    new-instance v0, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    const/16 v4, 0x8

    const/4 v5, 0x2

    const-string v6, "AD_ALREADY_VISIBLE"

    invoke-direct {v0, v6, v5, v4}, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;->AD_ALREADY_VISIBLE:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    .line 4
    new-instance v0, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    const/4 v6, 0x3

    const-string v7, "INTERNET_UNAVAILABLE"

    const/16 v8, 0x19

    invoke-direct {v0, v7, v6, v8}, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;->INTERNET_UNAVAILABLE:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    .line 5
    new-instance v0, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    const/4 v7, 0x4

    const-string v8, "PRESENTATION_FAILURE"

    const/16 v9, 0x21

    invoke-direct {v0, v8, v7, v9}, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;->PRESENTATION_FAILURE:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    .line 6
    new-instance v0, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    const/4 v8, 0x5

    const-string v9, "NO_CACHED_AD"

    const/16 v10, 0x22

    invoke-direct {v0, v9, v8, v10}, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;->NO_CACHED_AD:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    .line 7
    new-instance v0, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    const/4 v9, 0x6

    const-string v10, "BANNER_DISABLED"

    const/16 v11, 0x24

    invoke-direct {v0, v10, v9, v11}, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;->BANNER_DISABLED:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    .line 8
    new-instance v0, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    const-string v10, "BANNER_VIEW_IS_DETACHED"

    const/16 v11, 0x25

    invoke-direct {v0, v10, v3, v11}, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;->BANNER_VIEW_IS_DETACHED:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    .line 9
    new-array v4, v4, [Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    sget-object v10, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;->INTERNAL:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    aput-object v10, v4, v1

    sget-object v1, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;->SESSION_NOT_STARTED:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    aput-object v1, v4, v2

    sget-object v1, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;->AD_ALREADY_VISIBLE:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    aput-object v1, v4, v5

    sget-object v1, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;->INTERNET_UNAVAILABLE:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    aput-object v1, v4, v6

    sget-object v1, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;->PRESENTATION_FAILURE:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    aput-object v1, v4, v7

    sget-object v1, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;->NO_CACHED_AD:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    aput-object v1, v4, v8

    sget-object v1, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;->BANNER_DISABLED:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    aput-object v1, v4, v9

    aput-object v0, v4, v3

    sput-object v4, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;->$VALUES:[Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

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
    iput p3, p0, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;->errorCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Events/ChartboostShowError$Code;
    .registers 2

    .line 1
    const-class v0, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    return-object p0
.end method

.method public static values()[Lcom/chartboost/sdk/Events/ChartboostShowError$Code;
    .registers 1

    .line 1
    sget-object v0, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;->$VALUES:[Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/Events/ChartboostShowError$Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;->errorCode:I

    return v0
.end method
