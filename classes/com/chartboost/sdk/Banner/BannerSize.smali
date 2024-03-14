.class public final enum Lcom/chartboost/sdk/Banner/BannerSize;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/chartboost/sdk/Banner/BannerSize;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LEADERBOARD:Lcom/chartboost/sdk/Banner/BannerSize;

.field public static final enum MEDIUM:Lcom/chartboost/sdk/Banner/BannerSize;

.field public static final enum STANDARD:Lcom/chartboost/sdk/Banner/BannerSize;

.field private static final synthetic a:[Lcom/chartboost/sdk/Banner/BannerSize;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lcom/chartboost/sdk/Banner/BannerSize;

    const/4 v1, 0x0

    const-string v2, "STANDARD"

    invoke-direct {v0, v2, v1}, Lcom/chartboost/sdk/Banner/BannerSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Banner/BannerSize;->STANDARD:Lcom/chartboost/sdk/Banner/BannerSize;

    .line 2
    new-instance v0, Lcom/chartboost/sdk/Banner/BannerSize;

    const/4 v2, 0x1

    const-string v3, "MEDIUM"

    invoke-direct {v0, v3, v2}, Lcom/chartboost/sdk/Banner/BannerSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Banner/BannerSize;->MEDIUM:Lcom/chartboost/sdk/Banner/BannerSize;

    .line 3
    new-instance v0, Lcom/chartboost/sdk/Banner/BannerSize;

    const/4 v3, 0x2

    const-string v4, "LEADERBOARD"

    invoke-direct {v0, v4, v3}, Lcom/chartboost/sdk/Banner/BannerSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Banner/BannerSize;->LEADERBOARD:Lcom/chartboost/sdk/Banner/BannerSize;

    const/4 v4, 0x3

    .line 4
    new-array v4, v4, [Lcom/chartboost/sdk/Banner/BannerSize;

    sget-object v5, Lcom/chartboost/sdk/Banner/BannerSize;->STANDARD:Lcom/chartboost/sdk/Banner/BannerSize;

    aput-object v5, v4, v1

    sget-object v1, Lcom/chartboost/sdk/Banner/BannerSize;->MEDIUM:Lcom/chartboost/sdk/Banner/BannerSize;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/chartboost/sdk/Banner/BannerSize;->a:[Lcom/chartboost/sdk/Banner/BannerSize;

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

.method private static a(Lcom/chartboost/sdk/Banner/BannerSize;)Landroid/util/Size;
    .registers 6

    .line 1
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x140

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 2
    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x12c

    const/16 v3, 0xfa

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 3
    new-instance v2, Landroid/util/Size;

    const/16 v3, 0x2d8

    const/16 v4, 0x5a

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    .line 5
    sget-object v3, Lcom/chartboost/sdk/Banner/BannerSize$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v3, p0

    const/4 v3, 0x1

    if-eq p0, v3, :cond_30

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2e

    const/4 p0, 0x0

    return-object p0

    :cond_2e
    return-object v2

    :cond_2f
    return-object v1

    :cond_30
    return-object v0
.end method

.method public static fromInteger(I)Lcom/chartboost/sdk/Banner/BannerSize;
    .registers 2

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_a
    sget-object p0, Lcom/chartboost/sdk/Banner/BannerSize;->LEADERBOARD:Lcom/chartboost/sdk/Banner/BannerSize;

    return-object p0

    .line 2
    :cond_d
    sget-object p0, Lcom/chartboost/sdk/Banner/BannerSize;->MEDIUM:Lcom/chartboost/sdk/Banner/BannerSize;

    return-object p0

    .line 3
    :cond_10
    sget-object p0, Lcom/chartboost/sdk/Banner/BannerSize;->STANDARD:Lcom/chartboost/sdk/Banner/BannerSize;

    return-object p0
.end method

.method public static getHeight(Lcom/chartboost/sdk/Banner/BannerSize;)I
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/chartboost/sdk/Banner/BannerSize;->a(Lcom/chartboost/sdk/Banner/BannerSize;)Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 3
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static getWidth(Lcom/chartboost/sdk/Banner/BannerSize;)I
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/chartboost/sdk/Banner/BannerSize;->a(Lcom/chartboost/sdk/Banner/BannerSize;)Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 3
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Banner/BannerSize;
    .registers 2

    .line 1
    const-class v0, Lcom/chartboost/sdk/Banner/BannerSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/Banner/BannerSize;

    return-object p0
.end method

.method public static values()[Lcom/chartboost/sdk/Banner/BannerSize;
    .registers 1

    .line 1
    sget-object v0, Lcom/chartboost/sdk/Banner/BannerSize;->a:[Lcom/chartboost/sdk/Banner/BannerSize;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/Banner/BannerSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/Banner/BannerSize;

    return-object v0
.end method
