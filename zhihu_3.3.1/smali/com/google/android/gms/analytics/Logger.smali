.class public interface abstract Lcom/google/android/gms/analytics/Logger;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/Logger$LogLevel;
    }
.end annotation


# virtual methods
.method public abstract error(Ljava/lang/Exception;)V
.end method

.method public abstract error(Ljava/lang/String;)V
.end method

.method public abstract getLogLevel()I
.end method

.method public abstract info(Ljava/lang/String;)V
.end method

.method public abstract setLogLevel(I)V
.end method

.method public abstract verbose(Ljava/lang/String;)V
.end method

.method public abstract warn(Ljava/lang/String;)V
.end method
