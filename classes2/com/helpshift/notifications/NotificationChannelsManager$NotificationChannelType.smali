.class public final enum Lcom/helpshift/notifications/NotificationChannelsManager$NotificationChannelType;
.super Ljava/lang/Enum;
.source "NotificationChannelsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/notifications/NotificationChannelsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationChannelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpshift/notifications/NotificationChannelsManager$NotificationChannelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpshift/notifications/NotificationChannelsManager$NotificationChannelType;

.field public static final enum SUPPORT:Lcom/helpshift/notifications/NotificationChannelsManager$NotificationChannelType;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 132
    new-instance v0, Lcom/helpshift/notifications/NotificationChannelsManager$NotificationChannelType;

    const/4 v1, 0x0

    const-string v2, "SUPPORT"

    invoke-direct {v0, v2, v1}, Lcom/helpshift/notifications/NotificationChannelsManager$NotificationChannelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/notifications/NotificationChannelsManager$NotificationChannelType;->SUPPORT:Lcom/helpshift/notifications/NotificationChannelsManager$NotificationChannelType;

    const/4 v0, 0x1

    .line 131
    new-array v0, v0, [Lcom/helpshift/notifications/NotificationChannelsManager$NotificationChannelType;

    sget-object v2, Lcom/helpshift/notifications/NotificationChannelsManager$NotificationChannelType;->SUPPORT:Lcom/helpshift/notifications/NotificationChannelsManager$NotificationChannelType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/helpshift/notifications/NotificationChannelsManager$NotificationChannelType;->$VALUES:[Lcom/helpshift/notifications/NotificationChannelsManager$NotificationChannelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpshift/notifications/NotificationChannelsManager$NotificationChannelType;
    .registers 2

    .line 131
    const-class v0, Lcom/helpshift/notifications/NotificationChannelsManager$NotificationChannelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpshift/notifications/NotificationChannelsManager$NotificationChannelType;

    return-object p0
.end method

.method public static values()[Lcom/helpshift/notifications/NotificationChannelsManager$NotificationChannelType;
    .registers 1

    .line 131
    sget-object v0, Lcom/helpshift/notifications/NotificationChannelsManager$NotificationChannelType;->$VALUES:[Lcom/helpshift/notifications/NotificationChannelsManager$NotificationChannelType;

    invoke-virtual {v0}, [Lcom/helpshift/notifications/NotificationChannelsManager$NotificationChannelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpshift/notifications/NotificationChannelsManager$NotificationChannelType;

    return-object v0
.end method
