.class public Lcom/google/android/gms/internal/measurement/zzev;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.4.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzev$zza;
    }
.end annotation


# static fields
.field private static volatile zza:Z = false

.field private static zzb:Z = true

.field private static volatile zzc:Lcom/google/android/gms/internal/measurement/zzev;

.field private static volatile zzd:Lcom/google/android/gms/internal/measurement/zzev;

.field private static final zze:Lcom/google/android/gms/internal/measurement/zzev;


# instance fields
.field private final zzf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/measurement/zzev$zza;",
            "Lcom/google/android/gms/internal/measurement/zzfi$zzf<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzev;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzev;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzev;->zze:Lcom/google/android/gms/internal/measurement/zzev;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzev;->zzf:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzev;->zzf:Ljava/util/Map;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzev;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzev;->zzc:Lcom/google/android/gms/internal/measurement/zzev;

    if-nez v0, :cond_14

    .line 3
    const-class v1, Lcom/google/android/gms/internal/measurement/zzev;

    monitor-enter v1

    .line 4
    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzev;->zzc:Lcom/google/android/gms/internal/measurement/zzev;

    if-nez v0, :cond_f

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzev;->zze:Lcom/google/android/gms/internal/measurement/zzev;

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzev;->zzc:Lcom/google/android/gms/internal/measurement/zzev;

    .line 8
    :cond_f
    monitor-exit v1

    goto :goto_14

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v0

    :cond_14
    :goto_14
    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/measurement/zzev;
    .registers 2

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzev;->zzd:Lcom/google/android/gms/internal/measurement/zzev;

    if-eqz v0, :cond_5

    return-object v0

    .line 13
    :cond_5
    const-class v0, Lcom/google/android/gms/internal/measurement/zzev;

    monitor-enter v0

    .line 14
    :try_start_8
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzev;->zzd:Lcom/google/android/gms/internal/measurement/zzev;

    if-eqz v1, :cond_e

    .line 16
    monitor-exit v0

    return-object v1

    .line 18
    :cond_e
    const-class v1, Lcom/google/android/gms/internal/measurement/zzev;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzev;

    move-result-object v1

    .line 20
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzev;->zzd:Lcom/google/android/gms/internal/measurement/zzev;

    .line 21
    monitor-exit v0

    return-object v1

    :catchall_18
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_18

    throw v1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/measurement/zzgt;I)Lcom/google/android/gms/internal/measurement/zzfi$zzf;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/android/gms/internal/measurement/zzgt;",
            ">(TContainingType;I)",
            "Lcom/google/android/gms/internal/measurement/zzfi$zzf<",
            "TContainingType;*>;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzev;->zzf:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzev$zza;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/measurement/zzev$zza;-><init>(Ljava/lang/Object;I)V

    .line 24
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfi$zzf;

    return-object p1
.end method
