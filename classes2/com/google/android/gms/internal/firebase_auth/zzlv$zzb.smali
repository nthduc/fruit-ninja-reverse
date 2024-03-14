.class public final Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;
.super Lcom/google/android/gms/internal/firebase_auth/zzif;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzjp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase_auth/zzlv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_auth/zzif<",
        "Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;",
        "Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_auth/zzjp;"
    }
.end annotation


# static fields
.field private static final zzk:Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;

.field private static volatile zzl:Lcom/google/android/gms/internal/firebase_auth/zzjx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzjx<",
            "Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:Ljava/lang/String;

.field private zzd:J

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:J

.field private zzj:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;-><init>()V

    .line 39
    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;->zzk:Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;

    .line 40
    const-class v1, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_auth/zzif;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzif;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;->zzc:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;->zze:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;->zzf:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;->zzg:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;->zzh:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;->zzj:Ljava/lang/String;

    return-void
.end method

.method public static zzf()Lcom/google/android/gms/internal/firebase_auth/zzjx;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase_auth/zzjx<",
            "Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;",
            ">;"
        }
    .end annotation

    .line 32
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;->zzk:Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;

    .line 33
    sget v1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->zzg:I

    const/4 v2, 0x0

    .line 34
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzif;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzjx;

    return-object v0
.end method

.method static synthetic zzg()Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;
    .registers 1

    .line 37
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;->zzk:Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 13
    sget-object p2, Lcom/google/android/gms/internal/firebase_auth/zzlu;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_74

    .line 31
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 29
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;->zzl:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    if-nez p1, :cond_2f

    .line 22
    const-class p2, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;

    monitor-enter p2

    .line 23
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;->zzl:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    if-nez p1, :cond_2a

    .line 25
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzc;

    sget-object p3, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;->zzk:Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzif$zzc;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzif;)V

    .line 26
    sput-object p1, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;->zzl:Lcom/google/android/gms/internal/firebase_auth/zzjx;

    .line 27
    :cond_2a
    monitor-exit p2

    goto :goto_2f

    :catchall_2c
    move-exception p1

    monitor-exit p2
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_2c

    throw p1

    :cond_2f
    :goto_2f
    return-object p1

    .line 19
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;->zzk:Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;

    return-object p1

    :pswitch_33
    const/16 p1, 0x8

    .line 16
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

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

    .line 18
    sget-object p2, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;->zzk:Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;

    const-string p3, "\u0000\u0008\u0000\u0000\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u0208\u0002\u0002\u0003\u0208\u0004\u0208\u0005\u0208\u0006\u0208\u0007\u0002\u0008\u0208"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;->zza(Lcom/google/android/gms/internal/firebase_auth/zzjn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_67
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb$zza;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzlu;)V

    return-object p1

    .line 14
    :pswitch_6d
    new-instance p1, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;-><init>()V

    return-object p1

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_67
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final zza()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()J
    .registers 3

    .line 10
    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;->zzd:J

    return-wide v0
.end method

.method public final zzd()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzlv$zzb;->zzf:Ljava/lang/String;

    return-object v0
.end method
