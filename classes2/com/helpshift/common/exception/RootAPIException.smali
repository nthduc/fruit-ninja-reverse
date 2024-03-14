.class public Lcom/helpshift/common/exception/RootAPIException;
.super Ljava/lang/RuntimeException;
.source "RootAPIException.java"


# instance fields
.field public final exception:Ljava/lang/Exception;

.field public final exceptionType:Lcom/helpshift/common/exception/ExceptionType;

.field public final message:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)V
    .registers 4

    .line 11
    invoke-direct {p0, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    iput-object p1, p0, Lcom/helpshift/common/exception/RootAPIException;->exception:Ljava/lang/Exception;

    .line 13
    iput-object p2, p0, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    .line 14
    iput-object p3, p0, Lcom/helpshift/common/exception/RootAPIException;->message:Ljava/lang/String;

    return-void
.end method

.method public static wrap(Ljava/lang/Exception;)Lcom/helpshift/common/exception/RootAPIException;
    .registers 2

    const/4 v0, 0x0

    .line 18
    invoke-static {p0, v0}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;)Lcom/helpshift/common/exception/RootAPIException;
    .registers 3

    const/4 v0, 0x0

    .line 22
    invoke-static {p0, p1, v0}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;
    .registers 4

    .line 29
    instance-of v0, p0, Lcom/helpshift/common/exception/RootAPIException;

    if-eqz v0, :cond_13

    .line 30
    check-cast p0, Lcom/helpshift/common/exception/RootAPIException;

    .line 31
    iget-object v0, p0, Lcom/helpshift/common/exception/RootAPIException;->exception:Ljava/lang/Exception;

    if-nez p1, :cond_c

    .line 33
    iget-object p1, p0, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    :cond_c
    if-nez p2, :cond_11

    .line 39
    iget-object p0, p0, Lcom/helpshift/common/exception/RootAPIException;->message:Ljava/lang/String;

    move-object p2, p0

    :cond_11
    move-object p0, v0

    goto :goto_17

    :cond_13
    if-nez p1, :cond_17

    .line 45
    sget-object p1, Lcom/helpshift/common/exception/UnexpectedException;->GENERIC:Lcom/helpshift/common/exception/UnexpectedException;

    .line 51
    :cond_17
    :goto_17
    new-instance v0, Lcom/helpshift/common/exception/RootAPIException;

    invoke-direct {v0, p0, p1, p2}, Lcom/helpshift/common/exception/RootAPIException;-><init>(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getServerStatusCode()I
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    instance-of v1, v0, Lcom/helpshift/common/exception/NetworkException;

    if-eqz v1, :cond_b

    .line 57
    check-cast v0, Lcom/helpshift/common/exception/NetworkException;

    iget v0, v0, Lcom/helpshift/common/exception/NetworkException;->serverStatusCode:I

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public shouldLog()Z
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/helpshift/common/exception/RootAPIException;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
