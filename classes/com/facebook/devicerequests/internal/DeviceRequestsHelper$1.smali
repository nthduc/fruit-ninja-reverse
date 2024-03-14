.class final Lcom/facebook/devicerequests/internal/DeviceRequestsHelper$1;
.super Ljava/lang/Object;
.source "DeviceRequestsHelper.java"

# interfaces
.implements Landroid/net/nsd/NsdManager$RegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->startAdvertisementServiceImpl(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$nsdServiceName:Ljava/lang/String;

.field final synthetic val$userCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 168
    iput-object p1, p0, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper$1;->val$nsdServiceName:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper$1;->val$userCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V
    .registers 3

    .line 182
    iget-object p1, p0, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper$1;->val$userCode:Ljava/lang/String;

    invoke-static {p1}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->cleanUpAdvertisementService(Ljava/lang/String;)V

    return-void
.end method

.method public onServiceRegistered(Landroid/net/nsd/NsdServiceInfo;)V
    .registers 3

    .line 172
    iget-object v0, p0, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper$1;->val$nsdServiceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 173
    iget-object p1, p0, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper$1;->val$userCode:Ljava/lang/String;

    invoke-static {p1}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->cleanUpAdvertisementService(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public onServiceUnregistered(Landroid/net/nsd/NsdServiceInfo;)V
    .registers 2

    return-void
.end method

.method public onUnregistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V
    .registers 3

    return-void
.end method
