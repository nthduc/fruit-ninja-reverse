.class public final Lcom/google/android/gms/internal/measurement/zzbt$zzc;
.super Lcom/google/android/gms/internal/measurement/zzfi;
.source "com.google.android.gms:play-services-measurement@@17.4.1"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzgv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzbt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzbt$zzc$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzfi<",
        "Lcom/google/android/gms/internal/measurement/zzbt$zzc;",
        "Lcom/google/android/gms/internal/measurement/zzbt$zzc$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzgv;"
    }
.end annotation


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/measurement/zzbt$zzc;

.field private static volatile zzg:Lcom/google/android/gms/internal/measurement/zzhc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhc<",
            "Lcom/google/android/gms/internal/measurement/zzbt$zzc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbt$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzbt$zzc;-><init>()V

    .line 28
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzbt$zzc;->zzf:Lcom/google/android/gms/internal/measurement/zzbt$zzc;

    .line 29
    const-class v1, Lcom/google/android/gms/internal/measurement/zzbt$zzc;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzfi;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfi;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbt$zzc;->zzd:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbt$zzc;->zze:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/measurement/zzbt$zzc;
    .registers 1

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbt$zzc;->zzf:Lcom/google/android/gms/internal/measurement/zzbt$zzc;

    return-object v0
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 7
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzbv;->zza:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_5a

    .line 25
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_10
    return-object p2

    .line 23
    :pswitch_11
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_16
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbt$zzc;->zzg:Lcom/google/android/gms/internal/measurement/zzhc;

    if-nez p1, :cond_2f

    .line 16
    const-class p2, Lcom/google/android/gms/internal/measurement/zzbt$zzc;

    monitor-enter p2

    .line 17
    :try_start_1d
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbt$zzc;->zzg:Lcom/google/android/gms/internal/measurement/zzhc;

    if-nez p1, :cond_2a

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfi$zza;

    sget-object p3, Lcom/google/android/gms/internal/measurement/zzbt$zzc;->zzf:Lcom/google/android/gms/internal/measurement/zzbt$zzc;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzfi$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzfi;)V

    .line 20
    sput-object p1, Lcom/google/android/gms/internal/measurement/zzbt$zzc;->zzg:Lcom/google/android/gms/internal/measurement/zzhc;

    .line 21
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

    .line 13
    :pswitch_30
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzbt$zzc;->zzf:Lcom/google/android/gms/internal/measurement/zzbt$zzc;

    return-object p1

    :pswitch_33
    const/4 p1, 0x3

    .line 10
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zze"

    aput-object p3, p1, p2

    .line 12
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzbt$zzc;->zzf:Lcom/google/android/gms/internal/measurement/zzbt$zzc;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzbt$zzc;->zza(Lcom/google/android/gms/internal/measurement/zzgt;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_4d
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzbt$zzc$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzbt$zzc$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzbv;)V

    return-object p1

    .line 8
    :pswitch_53
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzbt$zzc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzbt$zzc;-><init>()V

    return-object p1

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_53
        :pswitch_4d
        :pswitch_33
        :pswitch_30
        :pswitch_16
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final zza()Ljava/lang/String;
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbt$zzc;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbt$zzc;->zze:Ljava/lang/String;

    return-object v0
.end method
