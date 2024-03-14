.class public final enum Lcom/vungle/warren/Vungle$Consent;
.super Ljava/lang/Enum;
.source "Vungle.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/Vungle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Consent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vungle/warren/Vungle$Consent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vungle/warren/Vungle$Consent;

.field public static final enum OPTED_IN:Lcom/vungle/warren/Vungle$Consent;

.field public static final enum OPTED_OUT:Lcom/vungle/warren/Vungle$Consent;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1235
    new-instance v0, Lcom/vungle/warren/Vungle$Consent;

    const/4 v1, 0x0

    const-string v2, "OPTED_IN"

    invoke-direct {v0, v2, v1}, Lcom/vungle/warren/Vungle$Consent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/warren/Vungle$Consent;->OPTED_IN:Lcom/vungle/warren/Vungle$Consent;

    .line 1236
    new-instance v0, Lcom/vungle/warren/Vungle$Consent;

    const/4 v2, 0x1

    const-string v3, "OPTED_OUT"

    invoke-direct {v0, v3, v2}, Lcom/vungle/warren/Vungle$Consent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/warren/Vungle$Consent;->OPTED_OUT:Lcom/vungle/warren/Vungle$Consent;

    const/4 v0, 0x2

    .line 1233
    new-array v0, v0, [Lcom/vungle/warren/Vungle$Consent;

    sget-object v3, Lcom/vungle/warren/Vungle$Consent;->OPTED_IN:Lcom/vungle/warren/Vungle$Consent;

    aput-object v3, v0, v1

    sget-object v1, Lcom/vungle/warren/Vungle$Consent;->OPTED_OUT:Lcom/vungle/warren/Vungle$Consent;

    aput-object v1, v0, v2

    sput-object v0, Lcom/vungle/warren/Vungle$Consent;->$VALUES:[Lcom/vungle/warren/Vungle$Consent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1234
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/warren/Vungle$Consent;
    .registers 2

    .line 1233
    const-class v0, Lcom/vungle/warren/Vungle$Consent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vungle/warren/Vungle$Consent;

    return-object p0
.end method

.method public static values()[Lcom/vungle/warren/Vungle$Consent;
    .registers 1

    .line 1233
    sget-object v0, Lcom/vungle/warren/Vungle$Consent;->$VALUES:[Lcom/vungle/warren/Vungle$Consent;

    invoke-virtual {v0}, [Lcom/vungle/warren/Vungle$Consent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/warren/Vungle$Consent;

    return-object v0
.end method
