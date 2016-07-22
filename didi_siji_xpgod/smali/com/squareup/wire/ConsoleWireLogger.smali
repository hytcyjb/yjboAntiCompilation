.class final Lcom/squareup/wire/ConsoleWireLogger;
.super Ljava/lang/Object;
.source "ConsoleWireLogger.java"

# interfaces
.implements Lcom/squareup/wire/WireLogger;


# instance fields
.field private final isQuiet:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .parameter "quiet"

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean p1, p0, Lcom/squareup/wire/ConsoleWireLogger;->isQuiet:Z

    .line 8
    return-void
.end method


# virtual methods
.method public artifact(Lcom/squareup/wire/OutputArtifact;)V
    .locals 3
    .parameter "artifact"

    .prologue
    .line 18
    iget-boolean v1, p0, Lcom/squareup/wire/ConsoleWireLogger;->isQuiet:Z

    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {p1}, Lcom/squareup/wire/OutputArtifact;->file()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, msg:Ljava/lang/String;
    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 24
    return-void

    .line 21
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing generated code to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/squareup/wire/OutputArtifact;->file()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #msg:Ljava/lang/String;
    goto :goto_0
.end method

.method public error(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 27
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/squareup/wire/ConsoleWireLogger;->isQuiet:Z

    if-nez v0, :cond_0

    .line 12
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 14
    :cond_0
    return-void
.end method
