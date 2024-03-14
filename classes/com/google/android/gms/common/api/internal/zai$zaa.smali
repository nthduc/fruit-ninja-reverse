.class final Lcom/google/android/gms/common/api/internal/zai$zaa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.2.1"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/zai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zaa"
.end annotation


# instance fields
.field public final zacz:I

.field public final zada:Lcom/google/android/gms/common/api/GoogleApiClient;

.field public final zadb:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

.field private final synthetic zadc:Lcom/google/android/gms/common/api/internal/zai;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zai;ILcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zai$zaa;->zadc:Lcom/google/android/gms/common/api/internal/zai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/android/gms/common/api/internal/zai$zaa;->zacz:I

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zai$zaa;->zada:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/zai$zaa;->zadb:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    .line 5
    invoke-virtual {p3, p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "beginFailureResolution for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoManageHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zai$zaa;->zadc:Lcom/google/android/gms/common/api/internal/zai;

    iget v1, p0, Lcom/google/android/gms/common/api/internal/zai$zaa;->zacz:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/zal;->zab(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method
