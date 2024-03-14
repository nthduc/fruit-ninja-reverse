.class public final enum Lcom/vungle/warren/AdConfig$AdSize;
.super Ljava/lang/Enum;
.source "AdConfig.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/AdConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vungle/warren/AdConfig$AdSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vungle/warren/AdConfig$AdSize;

.field public static final enum BANNER:Lcom/vungle/warren/AdConfig$AdSize;

.field public static final enum BANNER_LEADERBOARD:Lcom/vungle/warren/AdConfig$AdSize;

.field public static final enum BANNER_SHORT:Lcom/vungle/warren/AdConfig$AdSize;

.field public static final enum VUNGLE_DEFAULT:Lcom/vungle/warren/AdConfig$AdSize;

.field public static final enum VUNGLE_MREC:Lcom/vungle/warren/AdConfig$AdSize;


# instance fields
.field private final height:I

.field private final name:Ljava/lang/String;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 75
    new-instance v6, Lcom/vungle/warren/AdConfig$AdSize;

    const-string v1, "VUNGLE_MREC"

    const/4 v2, 0x0

    const-string v3, "mrec"

    const/16 v4, 0x12c

    const/16 v5, 0xfa

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/vungle/warren/AdConfig$AdSize;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v6, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_MREC:Lcom/vungle/warren/AdConfig$AdSize;

    .line 77
    new-instance v0, Lcom/vungle/warren/AdConfig$AdSize;

    const-string v8, "VUNGLE_DEFAULT"

    const/4 v9, 0x1

    const-string v10, "default"

    const/4 v11, -0x1

    const/4 v12, -0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/vungle/warren/AdConfig$AdSize;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_DEFAULT:Lcom/vungle/warren/AdConfig$AdSize;

    .line 78
    new-instance v0, Lcom/vungle/warren/AdConfig$AdSize;

    const-string v2, "BANNER"

    const/4 v3, 0x2

    const-string v4, "banner"

    const/16 v5, 0x140

    const/16 v6, 0x32

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/vungle/warren/AdConfig$AdSize;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/vungle/warren/AdConfig$AdSize;->BANNER:Lcom/vungle/warren/AdConfig$AdSize;

    .line 79
    new-instance v0, Lcom/vungle/warren/AdConfig$AdSize;

    const-string v8, "BANNER_SHORT"

    const/4 v9, 0x3

    const-string v10, "banner_short"

    const/16 v11, 0x12c

    const/16 v12, 0x32

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/vungle/warren/AdConfig$AdSize;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/vungle/warren/AdConfig$AdSize;->BANNER_SHORT:Lcom/vungle/warren/AdConfig$AdSize;

    .line 80
    new-instance v0, Lcom/vungle/warren/AdConfig$AdSize;

    const-string v2, "BANNER_LEADERBOARD"

    const/4 v3, 0x4

    const-string v4, "banner_leaderboard"

    const/16 v5, 0x2d8

    const/16 v6, 0x5a

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/vungle/warren/AdConfig$AdSize;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/vungle/warren/AdConfig$AdSize;->BANNER_LEADERBOARD:Lcom/vungle/warren/AdConfig$AdSize;

    const/4 v0, 0x5

    .line 71
    new-array v0, v0, [Lcom/vungle/warren/AdConfig$AdSize;

    sget-object v1, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_MREC:Lcom/vungle/warren/AdConfig$AdSize;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_DEFAULT:Lcom/vungle/warren/AdConfig$AdSize;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/warren/AdConfig$AdSize;->BANNER:Lcom/vungle/warren/AdConfig$AdSize;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/warren/AdConfig$AdSize;->BANNER_SHORT:Lcom/vungle/warren/AdConfig$AdSize;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/warren/AdConfig$AdSize;->BANNER_LEADERBOARD:Lcom/vungle/warren/AdConfig$AdSize;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/vungle/warren/AdConfig$AdSize;->$VALUES:[Lcom/vungle/warren/AdConfig$AdSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput p4, p0, Lcom/vungle/warren/AdConfig$AdSize;->width:I

    .line 87
    iput p5, p0, Lcom/vungle/warren/AdConfig$AdSize;->height:I

    .line 88
    iput-object p3, p0, Lcom/vungle/warren/AdConfig$AdSize;->name:Ljava/lang/String;

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lcom/vungle/warren/AdConfig$AdSize;
    .registers 6

    .line 104
    invoke-static {}, Lcom/vungle/warren/AdConfig$AdSize;->values()[Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 105
    iget-object v4, v3, Lcom/vungle/warren/AdConfig$AdSize;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    return-object v3

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 109
    :cond_16
    sget-object p0, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_DEFAULT:Lcom/vungle/warren/AdConfig$AdSize;

    return-object p0
.end method

.method public static isBannerAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z
    .registers 2
    .param p0    # Lcom/vungle/warren/AdConfig$AdSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 117
    sget-object v0, Lcom/vungle/warren/AdConfig$AdSize;->BANNER:Lcom/vungle/warren/AdConfig$AdSize;

    if-eq p0, v0, :cond_f

    sget-object v0, Lcom/vungle/warren/AdConfig$AdSize;->BANNER_LEADERBOARD:Lcom/vungle/warren/AdConfig$AdSize;

    if-eq p0, v0, :cond_f

    sget-object v0, Lcom/vungle/warren/AdConfig$AdSize;->BANNER_SHORT:Lcom/vungle/warren/AdConfig$AdSize;

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static isDefaultAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z
    .registers 2
    .param p0    # Lcom/vungle/warren/AdConfig$AdSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 113
    sget-object v0, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_DEFAULT:Lcom/vungle/warren/AdConfig$AdSize;

    if-eq p0, v0, :cond_b

    sget-object v0, Lcom/vungle/warren/AdConfig$AdSize;->VUNGLE_MREC:Lcom/vungle/warren/AdConfig$AdSize;

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/warren/AdConfig$AdSize;
    .registers 2

    .line 71
    const-class v0, Lcom/vungle/warren/AdConfig$AdSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vungle/warren/AdConfig$AdSize;

    return-object p0
.end method

.method public static values()[Lcom/vungle/warren/AdConfig$AdSize;
    .registers 1

    .line 71
    sget-object v0, Lcom/vungle/warren/AdConfig$AdSize;->$VALUES:[Lcom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {v0}, [Lcom/vungle/warren/AdConfig$AdSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/warren/AdConfig$AdSize;

    return-object v0
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    .line 100
    iget v0, p0, Lcom/vungle/warren/AdConfig$AdSize;->height:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/vungle/warren/AdConfig$AdSize;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .line 96
    iget v0, p0, Lcom/vungle/warren/AdConfig$AdSize;->width:I

    return v0
.end method
