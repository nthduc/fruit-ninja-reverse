.class public Lcom/ironsource/sdk/utils/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static enableLogging:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 125
    sget-boolean v0, Lcom/ironsource/sdk/utils/Logger;->enableLogging:Z

    if-eqz v0, :cond_7

    .line 126
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 141
    sget-boolean v0, Lcom/ironsource/sdk/utils/Logger;->enableLogging:Z

    if-eqz v0, :cond_7

    .line 142
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 65
    sget-boolean v0, Lcom/ironsource/sdk/utils/Logger;->enableLogging:Z

    if-eqz v0, :cond_7

    .line 66
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 81
    sget-boolean v0, Lcom/ironsource/sdk/utils/Logger;->enableLogging:Z

    if-eqz v0, :cond_7

    .line 82
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    return-void
.end method

.method public static enableLogging(I)V
    .registers 2

    .line 19
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->MODE_0:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->getValue()I

    move-result v0

    if-ne v0, p0, :cond_c

    const/4 p0, 0x0

    .line 20
    sput-boolean p0, Lcom/ironsource/sdk/utils/Logger;->enableLogging:Z

    goto :goto_f

    :cond_c
    const/4 p0, 0x1

    .line 22
    sput-boolean p0, Lcom/ironsource/sdk/utils/Logger;->enableLogging:Z

    :goto_f
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 35
    sget-boolean v0, Lcom/ironsource/sdk/utils/Logger;->enableLogging:Z

    if-eqz v0, :cond_7

    .line 36
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 51
    sget-boolean v0, Lcom/ironsource/sdk/utils/Logger;->enableLogging:Z

    if-eqz v0, :cond_d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 52
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 155
    sget-boolean v0, Lcom/ironsource/sdk/utils/Logger;->enableLogging:Z

    if-eqz v0, :cond_7

    .line 156
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 171
    sget-boolean v0, Lcom/ironsource/sdk/utils/Logger;->enableLogging:Z

    if-eqz v0, :cond_7

    .line 172
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 95
    sget-boolean v0, Lcom/ironsource/sdk/utils/Logger;->enableLogging:Z

    if-eqz v0, :cond_7

    .line 96
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 111
    sget-boolean v0, Lcom/ironsource/sdk/utils/Logger;->enableLogging:Z

    if-eqz v0, :cond_7

    .line 112
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    return-void
.end method
