.class public final Lcom/google/android/gms/signin/SignInOptions;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.2.1"

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/signin/SignInOptions$zaa;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/google/android/gms/signin/SignInOptions;


# instance fields
.field private final zaso:Z

.field private final zasp:Z

.field private final zasq:Ljava/lang/String;

.field private final zasr:Z

.field private final zass:Ljava/lang/String;

.field private final zast:Ljava/lang/String;

.field private final zasu:Z

.field private final zasv:Ljava/lang/Long;

.field private final zasw:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 55
    new-instance v0, Lcom/google/android/gms/signin/SignInOptions$zaa;

    invoke-direct {v0}, Lcom/google/android/gms/signin/SignInOptions$zaa;-><init>()V

    .line 56
    new-instance v0, Lcom/google/android/gms/signin/SignInOptions;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    .line 57
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/signin/SignInOptions;-><init>(ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    .line 58
    sput-object v0, Lcom/google/android/gms/signin/SignInOptions;->DEFAULT:Lcom/google/android/gms/signin/SignInOptions;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/signin/SignInOptions;->zaso:Z

    .line 3
    iput-boolean p1, p0, Lcom/google/android/gms/signin/SignInOptions;->zasp:Z

    const/4 p2, 0x0

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/signin/SignInOptions;->zasq:Ljava/lang/String;

    .line 5
    iput-boolean p1, p0, Lcom/google/android/gms/signin/SignInOptions;->zasr:Z

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/signin/SignInOptions;->zasu:Z

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/signin/SignInOptions;->zass:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/signin/SignInOptions;->zast:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/signin/SignInOptions;->zasv:Ljava/lang/Long;

    .line 10
    iput-object p2, p0, Lcom/google/android/gms/signin/SignInOptions;->zasw:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 14
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/signin/SignInOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 16
    :cond_a
    check-cast p1, Lcom/google/android/gms/signin/SignInOptions;

    .line 17
    iget-boolean v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zaso:Z

    iget-boolean v3, p1, Lcom/google/android/gms/signin/SignInOptions;->zaso:Z

    if-ne v1, v3, :cond_57

    iget-boolean v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zasp:Z

    iget-boolean v3, p1, Lcom/google/android/gms/signin/SignInOptions;->zasp:Z

    if-ne v1, v3, :cond_57

    iget-object v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zasq:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/signin/SignInOptions;->zasq:Ljava/lang/String;

    .line 18
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    iget-boolean v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zasr:Z

    iget-boolean v3, p1, Lcom/google/android/gms/signin/SignInOptions;->zasr:Z

    if-ne v1, v3, :cond_57

    iget-boolean v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zasu:Z

    iget-boolean v3, p1, Lcom/google/android/gms/signin/SignInOptions;->zasu:Z

    if-ne v1, v3, :cond_57

    iget-object v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zass:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/signin/SignInOptions;->zass:Ljava/lang/String;

    .line 19
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zast:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/signin/SignInOptions;->zast:Ljava/lang/String;

    .line 20
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zasv:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/android/gms/signin/SignInOptions;->zasv:Ljava/lang/Long;

    .line 21
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zasw:Ljava/lang/Long;

    iget-object p1, p1, Lcom/google/android/gms/signin/SignInOptions;->zasw:Ljava/lang/Long;

    .line 22
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    return v0

    :cond_57
    return v2
.end method

.method public final getAuthApiSignInModuleVersion()Ljava/lang/Long;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/signin/SignInOptions;->zasv:Ljava/lang/Long;

    return-object v0
.end method

.method public final getHostedDomain()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/signin/SignInOptions;->zass:Ljava/lang/String;

    return-object v0
.end method

.method public final getLogSessionId()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/signin/SignInOptions;->zast:Ljava/lang/String;

    return-object v0
.end method

.method public final getRealClientLibraryVersion()Ljava/lang/Long;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/signin/SignInOptions;->zasw:Ljava/lang/Long;

    return-object v0
.end method

.method public final getServerClientId()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/signin/SignInOptions;->zasq:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .registers 4

    const/16 v0, 0x9

    .line 24
    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zaso:Z

    .line 25
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zasp:Z

    .line 26
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zasq:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zasr:Z

    .line 27
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zasu:Z

    .line 28
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zass:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zast:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zasv:Ljava/lang/Long;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zasw:Ljava/lang/Long;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 29
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isForceCodeForRefreshToken()Z
    .registers 2

    .line 33
    iget-boolean v0, p0, Lcom/google/android/gms/signin/SignInOptions;->zasr:Z

    return v0
.end method

.method public final isIdTokenRequested()Z
    .registers 2

    .line 31
    iget-boolean v0, p0, Lcom/google/android/gms/signin/SignInOptions;->zasp:Z

    return v0
.end method

.method public final isOfflineAccessRequested()Z
    .registers 2

    .line 30
    iget-boolean v0, p0, Lcom/google/android/gms/signin/SignInOptions;->zaso:Z

    return v0
.end method

.method public final toBundle()Landroid/os/Bundle;
    .registers 5

    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    iget-boolean v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zaso:Z

    const-string v2, "com.google.android.gms.signin.internal.offlineAccessRequested"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    iget-boolean v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zasp:Z

    const-string v2, "com.google.android.gms.signin.internal.idTokenRequested"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    iget-object v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zasq:Ljava/lang/String;

    const-string v2, "com.google.android.gms.signin.internal.serverClientId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    const/4 v2, 0x1

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    iget-boolean v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zasr:Z

    const-string v2, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 45
    iget-object v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zass:Ljava/lang/String;

    const-string v2, "com.google.android.gms.signin.internal.hostedDomain"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zast:Ljava/lang/String;

    const-string v2, "com.google.android.gms.signin.internal.logSessionId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-boolean v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zasu:Z

    const-string v2, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 48
    iget-object v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zasv:Ljava/lang/Long;

    if-eqz v1, :cond_49

    .line 50
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "com.google.android.gms.signin.internal.authApiSignInModuleVersion"

    .line 51
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 52
    :cond_49
    iget-object v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zasw:Ljava/lang/Long;

    if-eqz v1, :cond_56

    .line 53
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "com.google.android.gms.signin.internal.realClientLibraryVersion"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_56
    return-object v0
.end method

.method public final waitForAccessTokenRefresh()Z
    .registers 2

    .line 36
    iget-boolean v0, p0, Lcom/google/android/gms/signin/SignInOptions;->zasu:Z

    return v0
.end method
