.class final Lcom/google/android/gms/internal/games/zzdn;
.super Lcom/google/android/gms/internal/games/zzea;
.source "com.google.android.gms:play-services-games@@20.0.1"


# instance fields
.field private final synthetic zzez:Ljava/lang/String;

.field private final synthetic zzkx:[B

.field private final synthetic zzkz:[Lcom/google/android/gms/games/multiplayer/ParticipantResult;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/games/zzdh;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
    .registers 6

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/games/zzdn;->zzez:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/games/zzdn;->zzkx:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/games/zzdn;->zzkz:[Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/games/zzea;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/games/zzdg;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/games/internal/zzf;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzdn;->zzez:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/games/zzdn;->zzkx:[B

    iget-object v2, p0, Lcom/google/android/gms/internal/games/zzdn;->zzkz:[Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/zzf;->zza(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V

    return-void
.end method
