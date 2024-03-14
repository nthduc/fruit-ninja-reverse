.class public final enum Lcom/helpshift/websockets/ThreadType;
.super Ljava/lang/Enum;
.source "ThreadType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpshift/websockets/ThreadType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpshift/websockets/ThreadType;

.field public static final enum CONNECT_THREAD:Lcom/helpshift/websockets/ThreadType;

.field public static final enum FINISH_THREAD:Lcom/helpshift/websockets/ThreadType;

.field public static final enum READING_THREAD:Lcom/helpshift/websockets/ThreadType;

.field public static final enum WRITING_THREAD:Lcom/helpshift/websockets/ThreadType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 35
    new-instance v0, Lcom/helpshift/websockets/ThreadType;

    const/4 v1, 0x0

    const-string v2, "READING_THREAD"

    invoke-direct {v0, v2, v1}, Lcom/helpshift/websockets/ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/ThreadType;->READING_THREAD:Lcom/helpshift/websockets/ThreadType;

    .line 42
    new-instance v0, Lcom/helpshift/websockets/ThreadType;

    const/4 v2, 0x1

    const-string v3, "WRITING_THREAD"

    invoke-direct {v0, v3, v2}, Lcom/helpshift/websockets/ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/ThreadType;->WRITING_THREAD:Lcom/helpshift/websockets/ThreadType;

    .line 49
    new-instance v0, Lcom/helpshift/websockets/ThreadType;

    const/4 v3, 0x2

    const-string v4, "CONNECT_THREAD"

    invoke-direct {v0, v4, v3}, Lcom/helpshift/websockets/ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/ThreadType;->CONNECT_THREAD:Lcom/helpshift/websockets/ThreadType;

    .line 56
    new-instance v0, Lcom/helpshift/websockets/ThreadType;

    const/4 v4, 0x3

    const-string v5, "FINISH_THREAD"

    invoke-direct {v0, v5, v4}, Lcom/helpshift/websockets/ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/websockets/ThreadType;->FINISH_THREAD:Lcom/helpshift/websockets/ThreadType;

    const/4 v0, 0x4

    .line 30
    new-array v0, v0, [Lcom/helpshift/websockets/ThreadType;

    sget-object v5, Lcom/helpshift/websockets/ThreadType;->READING_THREAD:Lcom/helpshift/websockets/ThreadType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/helpshift/websockets/ThreadType;->WRITING_THREAD:Lcom/helpshift/websockets/ThreadType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/websockets/ThreadType;->CONNECT_THREAD:Lcom/helpshift/websockets/ThreadType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/helpshift/websockets/ThreadType;->FINISH_THREAD:Lcom/helpshift/websockets/ThreadType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/helpshift/websockets/ThreadType;->$VALUES:[Lcom/helpshift/websockets/ThreadType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpshift/websockets/ThreadType;
    .registers 2

    .line 30
    const-class v0, Lcom/helpshift/websockets/ThreadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpshift/websockets/ThreadType;

    return-object p0
.end method

.method public static values()[Lcom/helpshift/websockets/ThreadType;
    .registers 1

    .line 30
    sget-object v0, Lcom/helpshift/websockets/ThreadType;->$VALUES:[Lcom/helpshift/websockets/ThreadType;

    invoke-virtual {v0}, [Lcom/helpshift/websockets/ThreadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpshift/websockets/ThreadType;

    return-object v0
.end method
