.class public Lcom/applovin/mediation/MaxAdFormat;
.super Ljava/lang/Object;


# static fields
.field public static final BANNER:Lcom/applovin/mediation/MaxAdFormat;

.field public static final INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

.field public static final LEADER:Lcom/applovin/mediation/MaxAdFormat;

.field public static final MREC:Lcom/applovin/mediation/MaxAdFormat;

.field public static final NATIVE:Lcom/applovin/mediation/MaxAdFormat;

.field public static final REWARDED:Lcom/applovin/mediation/MaxAdFormat;

.field public static final REWARDED_INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/applovin/mediation/MaxAdFormat;

    const-string v1, "BANNER"

    invoke-direct {v0, v1}, Lcom/applovin/mediation/MaxAdFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/applovin/mediation/MaxAdFormat;->BANNER:Lcom/applovin/mediation/MaxAdFormat;

    new-instance v0, Lcom/applovin/mediation/MaxAdFormat;

    const-string v1, "MREC"

    invoke-direct {v0, v1}, Lcom/applovin/mediation/MaxAdFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/applovin/mediation/MaxAdFormat;->MREC:Lcom/applovin/mediation/MaxAdFormat;

    new-instance v0, Lcom/applovin/mediation/MaxAdFormat;

    const-string v1, "LEADER"

    invoke-direct {v0, v1}, Lcom/applovin/mediation/MaxAdFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/applovin/mediation/MaxAdFormat;->LEADER:Lcom/applovin/mediation/MaxAdFormat;

    new-instance v0, Lcom/applovin/mediation/MaxAdFormat;

    const-string v1, "INTER"

    invoke-direct {v0, v1}, Lcom/applovin/mediation/MaxAdFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    new-instance v0, Lcom/applovin/mediation/MaxAdFormat;

    const-string v1, "REWARDED"

    invoke-direct {v0, v1}, Lcom/applovin/mediation/MaxAdFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/applovin/mediation/MaxAdFormat;->REWARDED:Lcom/applovin/mediation/MaxAdFormat;

    new-instance v0, Lcom/applovin/mediation/MaxAdFormat;

    const-string v1, "REWARDED_INTER"

    invoke-direct {v0, v1}, Lcom/applovin/mediation/MaxAdFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    new-instance v0, Lcom/applovin/mediation/MaxAdFormat;

    const-string v1, "NATIVE"

    invoke-direct {v0, v1}, Lcom/applovin/mediation/MaxAdFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/applovin/mediation/MaxAdFormat;->NATIVE:Lcom/applovin/mediation/MaxAdFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/mediation/MaxAdFormat;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/mediation/MaxAdFormat;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Lcom/applovin/sdk/AppLovinSdkUtils$Size;
    .registers 4

    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->BANNER:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, p0, :cond_e

    new-instance v0, Lcom/applovin/sdk/AppLovinSdkUtils$Size;

    const/16 v1, 0x140

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lcom/applovin/sdk/AppLovinSdkUtils$Size;-><init>(II)V

    return-object v0

    :cond_e
    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->LEADER:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, p0, :cond_1c

    new-instance v0, Lcom/applovin/sdk/AppLovinSdkUtils$Size;

    const/16 v1, 0x2d8

    const/16 v2, 0x5a

    invoke-direct {v0, v1, v2}, Lcom/applovin/sdk/AppLovinSdkUtils$Size;-><init>(II)V

    return-object v0

    :cond_1c
    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->MREC:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, p0, :cond_2a

    new-instance v0, Lcom/applovin/sdk/AppLovinSdkUtils$Size;

    const/16 v1, 0x12c

    const/16 v2, 0xfa

    invoke-direct {v0, v1, v2}, Lcom/applovin/sdk/AppLovinSdkUtils$Size;-><init>(II)V

    return-object v0

    :cond_2a
    new-instance v0, Lcom/applovin/sdk/AppLovinSdkUtils$Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/applovin/sdk/AppLovinSdkUtils$Size;-><init>(II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaxAdFormat{label=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/mediation/MaxAdFormat;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
