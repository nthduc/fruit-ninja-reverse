.class public abstract Lcom/google/android/gms/internal/auth/zzaz;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;


# static fields
.field private static zzem:Ljava/lang/String; = "AUTH"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public toByteArray()[B
    .registers 4

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzaz;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/auth/zzaz;->zzem:Ljava/lang/String;

    const-string v2, "Error serializing object."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method