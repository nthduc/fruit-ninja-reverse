.class public final enum Lcom/helpshift/common/platform/Device$PermissionState;
.super Ljava/lang/Enum;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/common/platform/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PermissionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpshift/common/platform/Device$PermissionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpshift/common/platform/Device$PermissionState;

.field public static final enum AVAILABLE:Lcom/helpshift/common/platform/Device$PermissionState;

.field public static final enum REQUESTABLE:Lcom/helpshift/common/platform/Device$PermissionState;

.field public static final enum UNAVAILABLE:Lcom/helpshift/common/platform/Device$PermissionState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 66
    new-instance v0, Lcom/helpshift/common/platform/Device$PermissionState;

    const/4 v1, 0x0

    const-string v2, "AVAILABLE"

    invoke-direct {v0, v2, v1}, Lcom/helpshift/common/platform/Device$PermissionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/platform/Device$PermissionState;->AVAILABLE:Lcom/helpshift/common/platform/Device$PermissionState;

    .line 67
    new-instance v0, Lcom/helpshift/common/platform/Device$PermissionState;

    const/4 v2, 0x1

    const-string v3, "UNAVAILABLE"

    invoke-direct {v0, v3, v2}, Lcom/helpshift/common/platform/Device$PermissionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/platform/Device$PermissionState;->UNAVAILABLE:Lcom/helpshift/common/platform/Device$PermissionState;

    .line 68
    new-instance v0, Lcom/helpshift/common/platform/Device$PermissionState;

    const/4 v3, 0x2

    const-string v4, "REQUESTABLE"

    invoke-direct {v0, v4, v3}, Lcom/helpshift/common/platform/Device$PermissionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/common/platform/Device$PermissionState;->REQUESTABLE:Lcom/helpshift/common/platform/Device$PermissionState;

    const/4 v0, 0x3

    .line 65
    new-array v0, v0, [Lcom/helpshift/common/platform/Device$PermissionState;

    sget-object v4, Lcom/helpshift/common/platform/Device$PermissionState;->AVAILABLE:Lcom/helpshift/common/platform/Device$PermissionState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/helpshift/common/platform/Device$PermissionState;->UNAVAILABLE:Lcom/helpshift/common/platform/Device$PermissionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/common/platform/Device$PermissionState;->REQUESTABLE:Lcom/helpshift/common/platform/Device$PermissionState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/helpshift/common/platform/Device$PermissionState;->$VALUES:[Lcom/helpshift/common/platform/Device$PermissionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpshift/common/platform/Device$PermissionState;
    .registers 2

    .line 65
    const-class v0, Lcom/helpshift/common/platform/Device$PermissionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpshift/common/platform/Device$PermissionState;

    return-object p0
.end method

.method public static values()[Lcom/helpshift/common/platform/Device$PermissionState;
    .registers 1

    .line 65
    sget-object v0, Lcom/helpshift/common/platform/Device$PermissionState;->$VALUES:[Lcom/helpshift/common/platform/Device$PermissionState;

    invoke-virtual {v0}, [Lcom/helpshift/common/platform/Device$PermissionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpshift/common/platform/Device$PermissionState;

    return-object v0
.end method
