.class public final Lcom/google/android/gms/internal/measurement/zzjc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.1"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzde;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/zzde<",
        "Lcom/google/android/gms/internal/measurement/zzjf;",
        ">;"
    }
.end annotation


# static fields
.field private static zza:Lcom/google/android/gms/internal/measurement/zzjc;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/measurement/zzde;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzde<",
            "Lcom/google/android/gms/internal/measurement/zzjf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzjc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzjc;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzje;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzje;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzdh;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzde;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjc;-><init>(Lcom/google/android/gms/internal/measurement/zzde;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzde;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzde<",
            "Lcom/google/android/gms/internal/measurement/zzjf;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzdh;->zza(Lcom/google/android/gms/internal/measurement/zzde;)Lcom/google/android/gms/internal/measurement/zzde;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjc;->zzb:Lcom/google/android/gms/internal/measurement/zzde;

    return-void
.end method

.method public static zzb()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzjc;->zza:Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjc;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzjf;->zza()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjc;->zzb:Lcom/google/android/gms/internal/measurement/zzde;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzde;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzjf;

    return-object v0
.end method
