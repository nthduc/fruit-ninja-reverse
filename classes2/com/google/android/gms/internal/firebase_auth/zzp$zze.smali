.class public final Lcom/google/android/gms/internal/firebase_auth/zzp$zze;
.super Lcom/google/android/gms/internal/firebase_auth/zzif;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzjp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_auth/zzp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_auth/zzp$zze$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_auth/zzif<",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zze;",
        "Lcom/google/android/gms/internal/firebase_auth/zzp$zze$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_auth/zzjp;"
    }
.end annotation


# static fields
.field private static final zzn:Lcom/google/android/gms/internal/firebase_auth/zzp$zze;

.field private static volatile zzo:Lcom/google/android/gms/internal/firebase_auth/zzjx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzjx<",
            "Lcom/google/android/gms/internal/firebase_auth/zzp$zze;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:J

.field private zzi:Ljava/lang/String;

.field private zzj:Z

.field private zzk:Ljava/lang/String;

.field private zzl:Lcom/google/android/gms/internal/firebase_auth/zzio;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzio<",
            "Lcom/google/android/gms/internal/firebase_auth/zzr;",
            ">;"
        }
    .end annotation
.end field

.field private zzm:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;-><init>()V

    .line 46
    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;->zzn:Lcom/google/android/gms/internal/firebase_auth/zzp$zze;

    .line 47
    const-class v1, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_auth/zzif;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;->zzm:B

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;->zzd:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;->zze:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;->zzf:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;->zzg:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;->zzi:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;->zzk:Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;->zzac()Lcom/google/android/gms/internal/firebase_auth/zzio;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;->zzl:Lcom/google/android/gms/internal/firebase_auth/zzio;

    return-void
.end method

.method public static zzi()Lcom/google/android/gms/internal/firebase_auth/zzjx;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase_auth/zzjx<",
            "Lcom/google/android/gms/internal/firebase_auth/zzp$zze;",
            ">;"
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;->zzn:Lcom/google/android/gms/internal/firebase_auth/zzp$zze;

    .line 40
    sget v1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->zzg:I

    const/4 v2, 0x0

    .line 41
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzjx;

    return-object v0
.end method

.method static synthetic zzj()Lcom/google/android/gms/internal/firebase_auth/zzp$zze;
    .registers 1

    .line 44
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;->zzn:Lcom/google/android/gms/internal/firebase_auth/zzp$zze;

    return-object v0
.end method


# virtual methods
.method public final c_()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase_auth/zzr;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;->zzl:Lcom/google/android/gms/internal/firebase_auth/zzio;

    return-object v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 19
    sget-object p3, Lcom/google/android/gms/internal/firebase_auth/zzo;->zza:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_8e

    .line 38
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_11
    if-nez p2, :cond_14

    goto :goto_15

    :cond_14
    const/4 p3, 0x1

    :goto_15
    int-to-byte p1, p3

    .line 36
    iput-byte p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;->zzm:B

    return-object v1

    .line 35
    :pswitch_19
    iget-byte p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;->zzm:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 26
    :pswitch_20
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;->zzo:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    if-nez p1, :cond_39

    .line 28
    const-class p2, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;

    monitor-enter p2

    .line 29
    :try_start_27
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;->zzo:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    if-nez p1, :cond_34

    .line 31
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzc;

    sget-object p3, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;->zzn:Lcom/google/android/gms/internal/firebase_auth/zzp$zze;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzif$zzc;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzif;)V

    .line 32
    sput-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;->zzo:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    .line 33
    :cond_34
    monitor-exit p2

    goto :goto_39

    :catchall_36
    move-exception p1

    monitor-exit p2
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_36

    throw p1

    :cond_39
    :goto_39
    return-object p1

    .line 25
    :pswitch_3a
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;->zzn:Lcom/google/android/gms/internal/firebase_auth/zzp$zze;

    return-object p1

    :pswitch_3d
    const/16 p1, 0xb

    .line 22
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzc"

    aput-object p2, p1, p3

    const-string p2, "zzd"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-class p3, Lcom/google/android/gms/internal/firebase_auth/zzr;

    aput-object p3, p1, p2

    .line 24
    sget-object p2, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;->zzn:Lcom/google/android/gms/internal/firebase_auth/zzp$zze;

    const-string p3, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0001\u0001\u0001\u1508\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1002\u0004\u0006\u1008\u0005\u0007\u1007\u0006\u0008\u1008\u0007\t\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;->zza(Lcom/google/android/gms/internal/firebase_auth/zzjn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_82
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zze$zza;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zze$zza;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzo;)V

    return-object p1

    .line 20
    :pswitch_88
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;-><init>()V

    return-object p1

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_88
        :pswitch_82
        :pswitch_3d
        :pswitch_3a
        :pswitch_20
        :pswitch_19
        :pswitch_11
    .end packed-switch
.end method

.method public final zza()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()J
    .registers 3

    .line 14
    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;->zzh:J

    return-wide v0
.end method

.method public final zze()Ljava/lang/String;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;->zzi:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()Z
    .registers 2

    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;->zzj:Z

    return v0
.end method

.method public final zzg()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzp$zze;->zzk:Ljava/lang/String;

    return-object v0
.end method
