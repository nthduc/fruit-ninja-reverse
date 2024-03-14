.class public abstract Lcom/google/android/gms/internal/ads/zzabm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# static fields
.field public static final zzczc:Lcom/google/android/gms/internal/ads/zzabm;

.field public static final zzczd:Lcom/google/android/gms/internal/ads/zzabm;

.field public static final zzcze:Lcom/google/android/gms/internal/ads/zzabm;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzabl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzabl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzabm;->zzczc:Lcom/google/android/gms/internal/ads/zzabm;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzabo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzabo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzabm;->zzczd:Lcom/google/android/gms/internal/ads/zzabm;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzabn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzabn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzabm;->zzcze:Lcom/google/android/gms/internal/ads/zzabm;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract zzg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
