.class public interface abstract Lcom/google/android/exoplayer/metadata/MetadataParser;
.super Ljava/lang/Object;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract canParse(Ljava/lang/String;)Z
.end method

.method public abstract parse([BI)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation
.end method
