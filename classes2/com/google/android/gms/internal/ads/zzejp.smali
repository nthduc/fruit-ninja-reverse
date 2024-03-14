.class final Lcom/google/android/gms/internal/ads/zzejp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# static fields
.field private static final zzige:Lcom/google/android/gms/internal/ads/zzejo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzejo<",
            "*>;"
        }
    .end annotation
.end field

.field private static final zzigf:Lcom/google/android/gms/internal/ads/zzejo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzejo<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzejq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzejq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzejp;->zzige:Lcom/google/android/gms/internal/ads/zzejo;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejp;->zzbfv()Lcom/google/android/gms/internal/ads/zzejo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzejp;->zzigf:Lcom/google/android/gms/internal/ads/zzejo;

    return-void
.end method

.method private static zzbfv()Lcom/google/android/gms/internal/ads/zzejo;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzejo<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.ExtensionSchemaFull"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzejo;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    const/4 v0, 0x0

    return-object v0
.end method

.method static zzbfw()Lcom/google/android/gms/internal/ads/zzejo;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzejo<",
            "*>;"
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzejp;->zzige:Lcom/google/android/gms/internal/ads/zzejo;

    return-object v0
.end method

.method static zzbfx()Lcom/google/android/gms/internal/ads/zzejo;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzejo<",
            "*>;"
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzejp;->zzigf:Lcom/google/android/gms/internal/ads/zzejo;

    if-eqz v0, :cond_5

    return-object v0

    .line 7
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Protobuf runtime is not correctly loaded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
