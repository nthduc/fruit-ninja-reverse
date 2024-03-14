.class final enum Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;
.super Ljava/lang/Enum;
.source "VungleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/vungle/VungleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BannerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

.field public static final enum CACHED:Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

.field public static final enum REQUESTING:Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

.field public static final enum UNKNOWN:Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 61
    new-instance v0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;->UNKNOWN:Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

    .line 62
    new-instance v0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

    const/4 v2, 0x1

    const-string v3, "REQUESTING"

    invoke-direct {v0, v3, v2}, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;->REQUESTING:Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

    .line 63
    new-instance v0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

    const/4 v3, 0x2

    const-string v4, "CACHED"

    invoke-direct {v0, v4, v3}, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;->CACHED:Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

    const/4 v0, 0x3

    .line 60
    new-array v0, v0, [Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

    sget-object v4, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;->UNKNOWN:Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;->REQUESTING:Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;->CACHED:Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;->$VALUES:[Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;
    .registers 2

    .line 60
    const-class v0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;
    .registers 1

    .line 60
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;->$VALUES:[Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

    invoke-virtual {v0}, [Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/adapters/vungle/VungleAdapter$BannerState;

    return-object v0
.end method
