.class public final Lcom/google/android/gms/internal/firebase_auth/zzfm;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/firebase/auth/api/internal/zzel;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "ResetPasswordResponseCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x1
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;",
        "Lcom/google/firebase/auth/api/internal/zzel<",
        "Lcom/google/android/gms/internal/firebase_auth/zzfm;",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/firebase_auth/zzfm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getEmail"
        id = 0x2
    .end annotation
.end field

.field private zzb:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getNewEmail"
        id = 0x3
    .end annotation
.end field

.field private zzc:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getRequestType"
        id = 0x4
    .end annotation
.end field

.field private zzd:Lcom/google/android/gms/internal/firebase_auth/zzfh;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getMfaInfo"
        id = 0x5
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzfo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzfo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzfm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase_auth/zzfh;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/firebase_auth/zzfh;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zza:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zzb:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zzc:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zzd:Lcom/google/android/gms/internal/firebase_auth/zzfh;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zza:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 21
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zzb:Ljava/lang/String;

    const/4 v3, 0x3

    .line 25
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zzc:Ljava/lang/String;

    const/4 v3, 0x4

    .line 29
    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zzd:Lcom/google/android/gms/internal/firebase_auth/zzfh;

    const/4 v3, 0x5

    .line 33
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 34
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Lcom/google/android/gms/internal/firebase_auth/zzjx;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase_auth/zzjx<",
            "Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;",
            ">;"
        }
    .end annotation

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;->zzf()Lcom/google/android/gms/internal/firebase_auth/zzjx;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/firebase_auth/zzjn;)Lcom/google/firebase/auth/api/internal/zzel;
    .registers 4

    .line 38
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;

    if-eqz v0, :cond_4f

    .line 40
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;

    .line 41
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zza:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zzb:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;->zzc()Lcom/google/android/gms/internal/firebase_auth/zzgj;

    move-result-object v0

    .line 44
    sget-object v1, Lcom/google/android/gms/internal/firebase_auth/zzfp;->zza:[I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzgj;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_58

    const/4 v0, 0x0

    goto :goto_3c

    :pswitch_2b
    const-string v0, "REVERT_SECOND_FACTOR_ADDITION"

    goto :goto_3c

    :pswitch_2e
    const-string v0, "RECOVER_EMAIL"

    goto :goto_3c

    :pswitch_31
    const-string v0, "VERIFY_BEFORE_UPDATE_EMAIL"

    goto :goto_3c

    :pswitch_34
    const-string v0, "EMAIL_SIGNIN"

    goto :goto_3c

    :pswitch_37
    const-string v0, "PASSWORD_RESET"

    goto :goto_3c

    :pswitch_3a
    const-string v0, "VERIFY_EMAIL"

    .line 52
    :goto_3c
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zzc:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;->zzd()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zzk;->zze()Lcom/google/android/gms/internal/firebase_auth/zzr;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzfh;->zza(Lcom/google/android/gms/internal/firebase_auth/zzr;)Lcom/google/android/gms/internal/firebase_auth/zzfh;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zzd:Lcom/google/android/gms/internal/firebase_auth/zzfh;

    :cond_4e
    return-object p0

    .line 39
    :cond_4f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The passed proto must be an instance of ResetPasswordResponse."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
    .end packed-switch
.end method

.method public final zzb()Ljava/lang/String;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/firebase_auth/zzfh;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zzd:Lcom/google/android/gms/internal/firebase_auth/zzfh;

    return-object v0
.end method

.method public final zzf()Z
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zza:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final zzg()Z
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zzb:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final zzh()Z
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zzc:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final zzi()Z
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzfm;->zzd:Lcom/google/android/gms/internal/firebase_auth/zzfh;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method
