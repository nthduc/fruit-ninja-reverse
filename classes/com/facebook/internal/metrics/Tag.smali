.class public final enum Lcom/facebook/internal/metrics/Tag;
.super Ljava/lang/Enum;
.source "Tag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/internal/metrics/Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/internal/metrics/Tag;

.field public static final enum FACEBOOK_CORE_STARTUP:Lcom/facebook/internal/metrics/Tag;


# instance fields
.field private final suffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 4
    new-instance v0, Lcom/facebook/internal/metrics/Tag;

    const/4 v1, 0x0

    const-string v2, "FACEBOOK_CORE_STARTUP"

    const-string v3, "facebook_core_startup"

    invoke-direct {v0, v2, v1, v3}, Lcom/facebook/internal/metrics/Tag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/internal/metrics/Tag;->FACEBOOK_CORE_STARTUP:Lcom/facebook/internal/metrics/Tag;

    const/4 v0, 0x1

    .line 3
    new-array v0, v0, [Lcom/facebook/internal/metrics/Tag;

    sget-object v2, Lcom/facebook/internal/metrics/Tag;->FACEBOOK_CORE_STARTUP:Lcom/facebook/internal/metrics/Tag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/internal/metrics/Tag;->$VALUES:[Lcom/facebook/internal/metrics/Tag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput-object p3, p0, Lcom/facebook/internal/metrics/Tag;->suffix:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/internal/metrics/Tag;
    .registers 2

    .line 3
    const-class v0, Lcom/facebook/internal/metrics/Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/internal/metrics/Tag;

    return-object p0
.end method

.method public static values()[Lcom/facebook/internal/metrics/Tag;
    .registers 1

    .line 3
    sget-object v0, Lcom/facebook/internal/metrics/Tag;->$VALUES:[Lcom/facebook/internal/metrics/Tag;

    invoke-virtual {v0}, [Lcom/facebook/internal/metrics/Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/internal/metrics/Tag;

    return-object v0
.end method


# virtual methods
.method public getSuffix()Ljava/lang/String;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/facebook/internal/metrics/Tag;->suffix:Ljava/lang/String;

    return-object v0
.end method
