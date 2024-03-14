.class public final enum Lcom/chartboost/sdk/Events/ChartboostClickError$Code;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Events/ChartboostClickError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/chartboost/sdk/Events/ChartboostClickError$Code;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chartboost/sdk/Events/ChartboostClickError$Code;

.field public static final enum INTERNAL:Lcom/chartboost/sdk/Events/ChartboostClickError$Code;

.field public static final enum URI_INVALID:Lcom/chartboost/sdk/Events/ChartboostClickError$Code;

.field public static final enum URI_UNRECOGNIZED:Lcom/chartboost/sdk/Events/ChartboostClickError$Code;


# instance fields
.field private final errorCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lcom/chartboost/sdk/Events/ChartboostClickError$Code;

    const/4 v1, 0x0

    const-string v2, "URI_INVALID"

    invoke-direct {v0, v2, v1, v1}, Lcom/chartboost/sdk/Events/ChartboostClickError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Events/ChartboostClickError$Code;->URI_INVALID:Lcom/chartboost/sdk/Events/ChartboostClickError$Code;

    .line 2
    new-instance v0, Lcom/chartboost/sdk/Events/ChartboostClickError$Code;

    const/4 v2, 0x1

    const-string v3, "URI_UNRECOGNIZED"

    invoke-direct {v0, v3, v2, v2}, Lcom/chartboost/sdk/Events/ChartboostClickError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Events/ChartboostClickError$Code;->URI_UNRECOGNIZED:Lcom/chartboost/sdk/Events/ChartboostClickError$Code;

    .line 3
    new-instance v0, Lcom/chartboost/sdk/Events/ChartboostClickError$Code;

    const/4 v3, 0x3

    const/4 v4, 0x2

    const-string v5, "INTERNAL"

    invoke-direct {v0, v5, v4, v3}, Lcom/chartboost/sdk/Events/ChartboostClickError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/chartboost/sdk/Events/ChartboostClickError$Code;->INTERNAL:Lcom/chartboost/sdk/Events/ChartboostClickError$Code;

    .line 4
    new-array v3, v3, [Lcom/chartboost/sdk/Events/ChartboostClickError$Code;

    sget-object v5, Lcom/chartboost/sdk/Events/ChartboostClickError$Code;->URI_INVALID:Lcom/chartboost/sdk/Events/ChartboostClickError$Code;

    aput-object v5, v3, v1

    sget-object v1, Lcom/chartboost/sdk/Events/ChartboostClickError$Code;->URI_UNRECOGNIZED:Lcom/chartboost/sdk/Events/ChartboostClickError$Code;

    aput-object v1, v3, v2

    aput-object v0, v3, v4

    sput-object v3, Lcom/chartboost/sdk/Events/ChartboostClickError$Code;->$VALUES:[Lcom/chartboost/sdk/Events/ChartboostClickError$Code;

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
    iput p3, p0, Lcom/chartboost/sdk/Events/ChartboostClickError$Code;->errorCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Events/ChartboostClickError$Code;
    .registers 2

    .line 1
    const-class v0, Lcom/chartboost/sdk/Events/ChartboostClickError$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/Events/ChartboostClickError$Code;

    return-object p0
.end method

.method public static values()[Lcom/chartboost/sdk/Events/ChartboostClickError$Code;
    .registers 1

    .line 1
    sget-object v0, Lcom/chartboost/sdk/Events/ChartboostClickError$Code;->$VALUES:[Lcom/chartboost/sdk/Events/ChartboostClickError$Code;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/Events/ChartboostClickError$Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/Events/ChartboostClickError$Code;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/Events/ChartboostClickError$Code;->errorCode:I

    return v0
.end method
