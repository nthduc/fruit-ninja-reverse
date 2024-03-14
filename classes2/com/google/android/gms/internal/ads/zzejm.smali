.class public Lcom/google/android/gms/internal/ads/zzejm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzejm$zza;
    }
.end annotation


# static fields
.field private static volatile zzify:Z = false

.field private static zzifz:Z = true

.field private static volatile zziga:Lcom/google/android/gms/internal/ads/zzejm;

.field private static volatile zzigb:Lcom/google/android/gms/internal/ads/zzejm;

.field private static final zzigc:Lcom/google/android/gms/internal/ads/zzejm;


# instance fields
.field private final zzigd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/zzejm$zza;",
            "Lcom/google/android/gms/internal/ads/zzejz$zzf<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/zzejm;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzejm;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzejm;->zzigc:Lcom/google/android/gms/internal/ads/zzejm;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzejm;->zzigd:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejm;->zzigd:Ljava/util/Map;

    return-void
.end method

.method public static zzbft()Lcom/google/android/gms/internal/ads/zzejm;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzejm;->zziga:Lcom/google/android/gms/internal/ads/zzejm;

    if-nez v0, :cond_14

    .line 3
    const-class v1, Lcom/google/android/gms/internal/ads/zzejm;

    monitor-enter v1

    .line 4
    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzejm;->zziga:Lcom/google/android/gms/internal/ads/zzejm;

    if-nez v0, :cond_f

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzejm;->zzigc:Lcom/google/android/gms/internal/ads/zzejm;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzejm;->zziga:Lcom/google/android/gms/internal/ads/zzejm;

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

.method public static zzbfu()Lcom/google/android/gms/internal/ads/zzejm;
    .registers 2

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/zzejm;->zzigb:Lcom/google/android/gms/internal/ads/zzejm;

    if-eqz v0, :cond_5

    return-object v0

    .line 13
    :cond_5
    const-class v0, Lcom/google/android/gms/internal/ads/zzejm;

    monitor-enter v0

    .line 14
    :try_start_8
    sget-object v1, Lcom/google/android/gms/internal/ads/zzejm;->zzigb:Lcom/google/android/gms/internal/ads/zzejm;

    if-eqz v1, :cond_e

    .line 16
    monitor-exit v0

    return-object v1

    .line 18
    :cond_e
    const-class v1, Lcom/google/android/gms/internal/ads/zzejm;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzejx;->zzc(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzejm;

    move-result-object v1

    .line 20
    sput-object v1, Lcom/google/android/gms/internal/ads/zzejm;->zzigb:Lcom/google/android/gms/internal/ads/zzejm;

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
.method public final zza(Lcom/google/android/gms/internal/ads/zzelj;I)Lcom/google/android/gms/internal/ads/zzejz$zzf;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/android/gms/internal/ads/zzelj;",
            ">(TContainingType;I)",
            "Lcom/google/android/gms/internal/ads/zzejz$zzf<",
            "TContainingType;*>;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejm;->zzigd:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzejm$zza;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzejm$zza;-><init>(Ljava/lang/Object;I)V

    .line 24
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzejz$zzf;

    return-object p1
.end method
