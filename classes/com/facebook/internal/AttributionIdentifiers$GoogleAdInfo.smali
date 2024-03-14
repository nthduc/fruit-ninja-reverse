.class final Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;
.super Ljava/lang/Object;
.source "AttributionIdentifiers.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/AttributionIdentifiers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GoogleAdInfo"
.end annotation


# static fields
.field private static final FIRST_TRANSACTION_CODE:I = 0x1

.field private static final SECOND_TRANSACTION_CODE:I = 0x2


# instance fields
.field private binder:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput-object p1, p0, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;->binder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 320
    iget-object v0, p0, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public getAdvertiserId()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 324
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    .line 328
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 330
    iget-object v2, p0, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;->binder:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 331
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 332
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    .line 334
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_22
    move-exception v2

    .line 334
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 336
    throw v2
.end method

.method public isTrackingLimited()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 342
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    .line 345
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 347
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget-object v3, p0, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;->binder:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 349
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 350
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2a

    if-eqz v3, :cond_22

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    .line 352
    :goto_23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_2a
    move-exception v2

    .line 352
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 354
    throw v2
.end method
