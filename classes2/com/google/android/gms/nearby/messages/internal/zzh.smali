.class public final Lcom/google/android/gms/nearby/messages/internal/zzh;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "GetPermissionStatusRequestCreator"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/nearby/messages/internal/zzh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final versionCode:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$VersionField;
        id = 0x1
    .end annotation
.end field

.field private final zzff:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x3
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzhh:Lcom/google/android/gms/nearby/messages/internal/zzp;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getCallbackAsBinder"
        id = 0x2
        type = "android.os.IBinder"
    .end annotation
.end field

.field private final zzhi:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x4
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/zzh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Ljava/lang/String;Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;)V
    .registers 7
    .param p1    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzh;->versionCode:I

    const/4 p1, 0x0

    if-nez p2, :cond_a

    move-object p2, p1

    goto :goto_1e

    :cond_a
    const-string v0, "com.google.android.gms.nearby.messages.internal.INearbyMessagesCallback"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/nearby/messages/internal/zzp;

    if-eqz v1, :cond_18

    move-object p2, v0

    check-cast p2, Lcom/google/android/gms/nearby/messages/internal/zzp;

    goto :goto_1e

    :cond_18
    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzr;

    invoke-direct {v0, p2}, Lcom/google/android/gms/nearby/messages/internal/zzr;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    :goto_1e
    iput-object p2, p0, Lcom/google/android/gms/nearby/messages/internal/zzh;->zzhh:Lcom/google/android/gms/nearby/messages/internal/zzp;

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/zzh;->zzff:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p4, p1, p3, p2}, Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;->zza(Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzh;->zzhi:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, v0, v0}, Lcom/google/android/gms/nearby/messages/internal/zzh;-><init>(ILandroid/os/IBinder;Ljava/lang/String;Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/nearby/messages/internal/zzh;->versionCode:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/zzh;->zzhh:Lcom/google/android/gms/nearby/messages/internal/zzp;

    invoke-interface {v1}, Lcom/google/android/gms/nearby/messages/internal/zzp;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/zzh;->zzff:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/zzh;->zzhi:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    const/4 v3, 0x4

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
