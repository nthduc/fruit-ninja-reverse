.class public final enum Lcom/helpshift/logger/constants/LogLevel;
.super Ljava/lang/Enum;
.source "LogLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpshift/logger/constants/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpshift/logger/constants/LogLevel;

.field public static final enum DEBUG:Lcom/helpshift/logger/constants/LogLevel;

.field public static final enum ERROR:Lcom/helpshift/logger/constants/LogLevel;

.field public static final enum FATAL:Lcom/helpshift/logger/constants/LogLevel;

.field public static final enum OFF:Lcom/helpshift/logger/constants/LogLevel;

.field public static final enum WARN:Lcom/helpshift/logger/constants/LogLevel;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 14
    new-instance v0, Lcom/helpshift/logger/constants/LogLevel;

    const/4 v1, 0x0

    const-string v2, "OFF"

    invoke-direct {v0, v2, v1, v1}, Lcom/helpshift/logger/constants/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/helpshift/logger/constants/LogLevel;->OFF:Lcom/helpshift/logger/constants/LogLevel;

    .line 15
    new-instance v0, Lcom/helpshift/logger/constants/LogLevel;

    const/4 v2, 0x1

    const-string v3, "FATAL"

    invoke-direct {v0, v3, v2, v2}, Lcom/helpshift/logger/constants/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/helpshift/logger/constants/LogLevel;->FATAL:Lcom/helpshift/logger/constants/LogLevel;

    .line 16
    new-instance v0, Lcom/helpshift/logger/constants/LogLevel;

    const/4 v3, 0x2

    const-string v4, "ERROR"

    invoke-direct {v0, v4, v3, v3}, Lcom/helpshift/logger/constants/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/helpshift/logger/constants/LogLevel;->ERROR:Lcom/helpshift/logger/constants/LogLevel;

    .line 17
    new-instance v0, Lcom/helpshift/logger/constants/LogLevel;

    const/4 v4, 0x3

    const-string v5, "WARN"

    invoke-direct {v0, v5, v4, v4}, Lcom/helpshift/logger/constants/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/helpshift/logger/constants/LogLevel;->WARN:Lcom/helpshift/logger/constants/LogLevel;

    .line 18
    new-instance v0, Lcom/helpshift/logger/constants/LogLevel;

    const/4 v5, 0x4

    const-string v6, "DEBUG"

    invoke-direct {v0, v6, v5, v5}, Lcom/helpshift/logger/constants/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/helpshift/logger/constants/LogLevel;->DEBUG:Lcom/helpshift/logger/constants/LogLevel;

    const/4 v0, 0x5

    .line 12
    new-array v0, v0, [Lcom/helpshift/logger/constants/LogLevel;

    sget-object v6, Lcom/helpshift/logger/constants/LogLevel;->OFF:Lcom/helpshift/logger/constants/LogLevel;

    aput-object v6, v0, v1

    sget-object v1, Lcom/helpshift/logger/constants/LogLevel;->FATAL:Lcom/helpshift/logger/constants/LogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/logger/constants/LogLevel;->ERROR:Lcom/helpshift/logger/constants/LogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/helpshift/logger/constants/LogLevel;->WARN:Lcom/helpshift/logger/constants/LogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/helpshift/logger/constants/LogLevel;->DEBUG:Lcom/helpshift/logger/constants/LogLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/helpshift/logger/constants/LogLevel;->$VALUES:[Lcom/helpshift/logger/constants/LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/helpshift/logger/constants/LogLevel;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpshift/logger/constants/LogLevel;
    .registers 2

    .line 12
    const-class v0, Lcom/helpshift/logger/constants/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpshift/logger/constants/LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/helpshift/logger/constants/LogLevel;
    .registers 1

    .line 12
    sget-object v0, Lcom/helpshift/logger/constants/LogLevel;->$VALUES:[Lcom/helpshift/logger/constants/LogLevel;

    invoke-virtual {v0}, [Lcom/helpshift/logger/constants/LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpshift/logger/constants/LogLevel;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 27
    iget v0, p0, Lcom/helpshift/logger/constants/LogLevel;->value:I

    return v0
.end method
