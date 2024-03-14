.class synthetic Lcom/ironsource/adapters/vungle/VungleAdapter$9;
.super Ljava/lang/Object;
.source "VungleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/vungle/VungleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ironsource$adapters$vungle$VungleAdapter$EInitState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 173
    invoke-static {}, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->values()[Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$9;->$SwitchMap$com$ironsource$adapters$vungle$VungleAdapter$EInitState:[I

    :try_start_9
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$9;->$SwitchMap$com$ironsource$adapters$vungle$VungleAdapter$EInitState:[I

    sget-object v1, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->NOT_INIT:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    invoke-virtual {v1}, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$9;->$SwitchMap$com$ironsource$adapters$vungle$VungleAdapter$EInitState:[I

    sget-object v1, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->INIT_IN_PROGRESS:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    invoke-virtual {v1}, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$9;->$SwitchMap$com$ironsource$adapters$vungle$VungleAdapter$EInitState:[I

    sget-object v1, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->INIT_SUCCESS:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    invoke-virtual {v1}, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$9;->$SwitchMap$com$ironsource$adapters$vungle$VungleAdapter$EInitState:[I

    sget-object v1, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->INIT_FAIL:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    invoke-virtual {v1}, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_35

    :catch_35
    return-void
.end method
